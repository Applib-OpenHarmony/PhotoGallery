/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { ImageSliderModel } from './ImageSliderModel'

@Component
export struct ImageSlider {
  @State obj: ImageSliderModel = new ImageSliderModel();
  @State inSetValue: number = 0;
  img: ResourceStr[];

  aboutToAppear() {
    if (this.img == null || this.img == undefined) {
      console.error("please pass image resource array")
    }
  }

  build() {
    Column({ space: 30 }) {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Column() {
          Row() {
            Button("prev", { type: ButtonType.Capsule, stateEffect: true })
              .fontColor(this.obj.getTextColor())
              .height(35)
              .width(70)
              .backgroundColor(this.obj.getButtonColor())
              .fontSize(15)
              .onClick(() => {
                animateTo({ duration: 1000 }, () => {
                  if (this.inSetValue - 1 == -1) this.inSetValue = (this.img.length - 1)
                  else this.inSetValue = this.inSetValue - 1
                })

              })
          }
        }

        Slider({
          value: this.inSetValue,
          min: 0,
          max: this.img.length - 1,
          step: 1,
          style: SliderStyle.InSet
        })
          .blockColor(this.obj.getBlockColor())
          .trackColor(this.obj.getTrackColor())
          .selectedColor(this.obj.getSelectedColor())
          .showSteps(this.obj.getShowSteps())
          .showTips(false)
          .trackThickness(10)
          .width("70%")
          .onChange((value: number, mode: SliderChangeMode) => {
            animateTo({ duration: 1000 }, () => {
              this.inSetValue = value
            })
            console.info('value:' + value + 'mode:' + mode.toString())
          })
        Column() {
          Row() {
            Button("next", { type: ButtonType.Capsule, stateEffect: true })
              .fontColor(this.obj.getTextColor())
              .height(35)
              .width(70)
              .backgroundColor(this.obj.getButtonColor())
              .fontSize(15)
              .onClick(() => {
                animateTo({ duration: 1000 }, () => {
                  this.inSetValue = (this.inSetValue + 1) % this.img.length
                })
              })
          }
        }
      }

      Column() {
        Image(this.img[this.inSetValue])
          .width("95%")
          .height(this.obj.getImageHeight())
      }
    }
    .width('100%')
    .margin({ bottom: 15, top: 20 })
  }
}

export { ImageSliderModel } from "./ImageSliderModel"