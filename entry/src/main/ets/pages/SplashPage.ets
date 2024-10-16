import router from '@ohos.router'

/**
 * 欢迎页
 * */

@Entry
@Component
struct SplashPage {

  aboutToAppear(): void {
    setTimeout(()=>{
      router.pushUrl({ url: 'pages/MainPage'})
    },2000)
  }

  build() {
    Stack(){
      Image($r('app.media.landing_image'))
        .objectFit(ImageFit.ScaleDown)
        .width('100%')
        .height('100%')
    }
    .height('100%')
    .width('100%')
  }
}