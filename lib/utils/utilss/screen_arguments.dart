import 'package:camera/camera.dart';
import 'package:get/get.dart';

class ScreenArguments {
  final int? id;
  final bool? isAppBarShown;
  final String? appBarTitle;
  final Map? screenData;
  final RxList<XFile>? capturedImages;

  ScreenArguments(
      {this.id,
      this.isAppBarShown,
      this.appBarTitle,
      this.screenData,
      this.capturedImages});
}
