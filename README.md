<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

这是一个视频预加载的解决方案，提供丰富的接口与您的业务交互。

## Features
<video src = "https://github.com/tuhao-world/preload_video/raw/main/51_1710127130.mp4" autoplay="true" width=108 height=192></video>

## Getting started
dependencies:
preload_video: ^0.0.1

## Usage
to `https://github.com/tuhao-world/preload_video/blob/main/examples.dart` folder.

```dart
//模型
class HomeVo extends VideoVo{
  int? id;
  HomeVo({this.id});
  factory HomeVo.fromJson(Map<String, dynamic> json){
    return HomeVo().fromMap(json);
  }
  @override
  fromMap(element) {
    id = element?['id'];
    title = element?['worksTitle'];
    coverUrl = element?['coverUrl'];
    subTitle = element?['worksIntro'];
    playUrl = element?['playUrl'];
    return this;
  }
}
//model
class HomeModel extends VideoModel<HomeVo>{
  @override
  Future<DataLoadState> loadData({bool loadMore = false}) {
    //这里是放你获取视频列表的业务
  }
}

//组建
PreloadVideo<HomeVo, HomeModel>(
  model: HomeModel(),
)
```

## Additional information

有问题请联系 作者 hshlzlhbhzy@gmial
或github提issue，更多定制请联系 hshlzlhbhzy@gmial
谢谢！
