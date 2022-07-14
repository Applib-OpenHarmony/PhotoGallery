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

export class ImageSliderModel {
  private blockColor: string | ResourceColor = "#ffffff"
  private trackColor: string | ResourceColor = "#000000"
  private selectedColor: string | ResourceColor = "#587687"
  private showSteps: boolean = false
  private textColor: string |ResourceColor = "#ffffff"
  private imageHeight :Length = "350vp"
  private buttonColor : string | ResourceColor = "#000000"
  constructor() {
  }

  error(msg: string) {
    console.error('Undefined : ' + msg + ' is a mandatory attribute')
  }

  getBlockColor(): string | ResourceColor {
    if (this.blockColor == null || this.blockColor == undefined) this.error('blockColor')
    return this.blockColor
  }

  setBlockColor(value: string | ResourceColor): ImageSliderModel{
    if (value != null && value != undefined) this.blockColor = value
    return this
  }

  getTrackColor(): string | ResourceColor {
    if (this.trackColor == null || this.trackColor == undefined) this.error('trackColor')
    return this.trackColor
  }

  setTrackColor(value: string | ResourceColor): ImageSliderModel{
    if (value != null && value != undefined) this.trackColor = value
    return this
  }

  getSelectedColor(): string | ResourceColor{
    if (this.selectedColor == null || this.selectedColor == undefined) this.error('selectedColor')
    return this.selectedColor
  }

  setSelectedColor(value: string | ResourceColor): ImageSliderModel{
    if (value != null && value != undefined) this.selectedColor = value
    return this
  }

  getShowSteps(): boolean{
    if ((this.showSteps == null || this.showSteps == undefined)) this.error('showSteps')
    return this.showSteps
  }

  setShowSteps(value: boolean): ImageSliderModel{
    if (value != null && value != undefined) this.showSteps = value
    return this
  }
  getTextColor(): string |ResourceColor {
    if ((this.textColor == null || this.textColor == undefined)) this.error('textColor')
    return this.textColor
  }

  setTextColor(value: string |ResourceColor ): ImageSliderModel{
    if (value != null && value != undefined) this.textColor = value
    return this
  }
  getButtonColor(): string |ResourceColor {
    if ((this.buttonColor == null || this.buttonColor == undefined)) this.error('buttonColor')
    return this.buttonColor
  }

  setButtonColor(value: string |ResourceColor ): ImageSliderModel{
    if (value != null && value != undefined) this.buttonColor = value
    return this
  }

  getImageHeight(): Length {
    if ((this.imageHeight == null || this.imageHeight == undefined)) this.error('imageHeight')
    return this.imageHeight
  }

  setImageHeight(value: Length ): ImageSliderModel{
    if (value != null && value != undefined) this.imageHeight = value
    return this
  }
}