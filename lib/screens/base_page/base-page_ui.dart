import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../utils/utilss/colors.dart';
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

  final Color? pageBackground;
  final Widget? floatingActionButton;

  const BasePage(
      {super.key,
        required this.body,
        this.floatingActionButton,
        this.appBar,
        this.customDrawer,
        this.customHeight,
        this.bottomNavigationBar,
        this.isLoaderShown,
        this.pageBackground});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height:
      customHeight == null ? screenHeight : screenHeight - customHeight!,
      color: AppColors.primaryTextFieldColor,
      child: SafeArea(
        minimum: const EdgeInsets.all(0),
        maintainBottomViewPadding:
        false, //To get below notch same color as bottom tab bar
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            //To avoid screen height issues on keyboard appearance
            appBar: appBar != null
                ? PreferredSize(
                preferredSize: const Size.fromHeight(60), child: appBar!)
                : PreferredSize(preferredSize: Size.zero, child: Container()),
            body: Container(
              color: pageBackground,
              child: Stack(
                children: [
                  body,
                  Obx(() => controller.isPageLoading.value
                      ? Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      child: const SpinKitCircle(
                        color: Colors.black,
                        size: 80.0,
                      ),
                    ),
                  )
                      : const SizedBox())
                ],
              ),
            ),
            floatingActionButton: floatingActionButton,
            bottomNavigationBar: bottomNavigationBar,
            drawer: customDrawer),
      ),
    );
  }
}
