# ImageSlider

UI component image slider in OpenHarmony.

## Download & Install

Install using npm

```npm i @ohos/Imageslider```
## image slider working

![ImageSlider](https://user-images.githubusercontent.com/108897799/177938116-daeb5ca7-13fb-4f31-8d66-87f3ab12679f.gif)

## Usage Instructions

To be able to use image slider, below import statement must be used

```ets
//import statement
import { ImageSlider ,ImageSliderModel
}  from "@ohos/Imageslider"
```

Access image slider attributes through a object of ImageSliderModel and customize the image slider(if needed) using setter functions as
shown and finally pass the object along with the array of image resources to ImageSlider .

```ets
//Creating object
  private ImageSliderModel1: ImageSliderModel = new ImageSliderModel();
//array of image resources
  private img: ResourceStr[] = [$r("app.media.img1"),$r("app.media.img2"),$r("app.media.img3"),$r("app.media.img4"),$r("app.media.img5")]
```
```ets
//Customization
aboutToAppear(){
      this.ImageSliderModel1.setBlockColor("#ffffff")
      this.ImageSliderModel1.setTrackColor("#000000")
      this.ImageSliderModel1.setSelectedColor("#587687")
      this.ImageSliderModel1.setShowSteps(false)
      this.ImageSliderModel1.setTextColor("#ffffff")
      this.ImageSliderModel1.setButtonColor("#000000")
      this.ImageSliderModel1.setImageHeight(350)
      }
```
```ets
//Passing Customized/Non-customized object to ImageSlider along with the array of image resources
ImageSlider(
        {
          obj : this.ImageSliderModel1,
          img : this.img
        }
      )
```

## Compatibility
Supports OpenHarmony API version 9

## Code Contribution
If you find any problems during usage, you can submit an [Issue](https://github.com/Applib-OpenHarmony/PhotoGallery/issues) to us. Of course, we also welcome you to send us [PR](https://github.com/Applib-OpenHarmony/PhotoGallery/pulls).

## Open source License
This project is based on [Apache License 2.0](https://github.com/Applib-OpenHarmony/PhotoGallery/blob/main/LICENSE.txt), please enjoy and participate in open source freely.

# Reference:

Design by : Pranav Singh
