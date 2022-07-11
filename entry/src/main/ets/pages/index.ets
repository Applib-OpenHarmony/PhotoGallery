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

import { ImageSlider, ImageSliderModel
}  from "@ohos/imageslider"

@Entry
@Component
struct Index {
  private ImageSliderModel1: ImageSliderModel = new ImageSliderModel();
  private img: ResourceStr[] = [$r("app.media.img1"), $r("app.media.img2"), $r("app.media.img3"), $r("app.media.img4"), $r("app.media.img5")]

  aboutToAppear() {
    this.ImageSliderModel1.setBlockColor("#ffffff")
    this.ImageSliderModel1.setTrackColor("#000000")
    this.ImageSliderModel1.setSelectedColor("#587687")
    this.ImageSliderModel1.setShowSteps(false)
    this.ImageSliderModel1.setTextColor("#ffffff")
    this.ImageSliderModel1.setButtonColor("#000000")
    this.ImageSliderModel1.setImageHeight(350)
  }

  build() {
    Column() {
      ImageSlider(
        {
          img: this.img,
          obj: this.ImageSliderModel1
        }
      )
    }
  }
}