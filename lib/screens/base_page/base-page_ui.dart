import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base-page_controller.dart';

double screenHeight = 0;
double screenWidth = 0;

class BasePage extends GetView<BasePageController> {
  final Widget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? customDrawer;
  final double? customHeight;
  final bool? isLoaderShown;

  final Widget? floatingActionButton;
  const BasePage(
      {Key? key,
        required this.body,
        this.floatingActionButton,
        this.appBar,
        this.customDrawer,
        this.customHeight,
        this.bottomNavigationBar,
        this.isLoaderShown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height:
      customHeight == null ? screenHeight : screenHeight - customHeight!,
      child: SafeArea(
        minimum: const EdgeInsets.all(0),
        maintainBottomViewPadding:
        false, //To get below notch same color as bottom tab bar
        bottom: false,
        child: Scaffold(
          resizeToAvoidBottomInset:
          false, //To avoid screen height issues on keyboard appearance
          appBar: appBar != null
              ? PreferredSize(
              preferredSize: const Size.fromHeight(100), child: appBar!)
              : PreferredSize(preferredSize: Size.zero, child: Container()),
          body: Container(
            child: Stack(
              children: [
                body,
                /*   Obx(() => controller.isPageLoading.value
                    ? Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          color: Colors.transparent,
                          child: const SpinKitFadingCircle(
                            color: Colors.white,
                            size: 80.0,
                          ),
                        ),
                      )
                    : const SizedBox())*/
              ],
            ),
          ),
          floatingActionButton: floatingActionButton,
          bottomNavigationBar:
          bottomNavigationBar != null ? bottomNavigationBar! : null,
          drawer: customDrawer != null ? customDrawer! : null,
        ),
      ),
    );
  }
}
