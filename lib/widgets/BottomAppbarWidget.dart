import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../screens/HomeScreen/HomeScreenui.dart';
import '../utils/utilss/colors.dart';
import '../utils/utilss/strings.dart';

final BottomAppBarController bottomAppBarController =
Get.put(BottomAppBarController());

class BottomAppBarController extends GetxController {
  var selectedValueOnBottomAppBar = "".obs;
  @override
  void onInit() {
    super.onInit();
    selectedValueOnBottomAppBar.value = AppStrings.homePageOne;
  }
}

ValueNotifier<String> changedValueNotifier = ValueNotifier(
    ""); //changedValueNotifier gets notified each time user taps on the bottom app bar

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.primaryTextFieldColor,
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            newsfeedTabWidget(bottomAppBarController),
            myTeamsTabWidget(bottomAppBarController),
          ],
        ),
      ),
    );
  }
}
Widget myTeamsTabWidget(BottomAppBarController controller) {
  return Obx(
        () => Column(
      key: Key(AppStrings.myTeamsBottomMenuKey),
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: IconButton(
            icon: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[1]
                ? SvgPicture.asset(
              "assets/images/bottom_tab_icons/my_teams_red.svg",
              fit: BoxFit.contain,
              height: 20,
            )
                : SvgPicture.asset(
              "assets/images/bottom_tab_icons/my_teams_white.svg",
              fit: BoxFit.contain,
              height: 20,
            ),
            onPressed: () {
              controller.selectedValueOnBottomAppBar.value =
              bottomTabItemsList[1];
              changedValueNotifier.value = bottomTabItemsList[1];
            },
            color: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[1]
                ? AppColors.unSelectedBlueButtonColor
                : AppColors.unselectedGridColor,
          ),
        ),
        Text(
          bottomTabItemsList[1],
          style: TextStyle(
            color: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[1]
                ? AppColors.unSelectedBlueButtonColor
                : AppColors
                .unselectedGridColor, // Set the initial color of the label
          ),
          textScaler: const TextScaler.linear(1),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}

Widget newsfeedTabWidget(BottomAppBarController controller) {
  return Obx(
        () => Column(
      key: Key(AppStrings.homeBottomMenuKey),
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: IconButton(
            iconSize: 15,
            icon: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[0]
                ? SvgPicture.asset(
              "assets/images/bottom_tab_icons/home_red.svg",
              fit: BoxFit.contain,
              height: 20,
            )
                : SvgPicture.asset(
              "assets/images/bottom_tab_icons/home_white.svg",
              fit: BoxFit.contain,
              height: 20,
            ),
            onPressed: () {
              controller.selectedValueOnBottomAppBar.value =
              bottomTabItemsList[0];
              changedValueNotifier.value = bottomTabItemsList[0];
            },
            color: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[0]
                ? AppColors.unSelectedBlueButtonColor
                : AppColors.unselectedGridColor,
          ),
        ),
        Text(
          bottomTabItemsList[0],
          style: TextStyle(
            color: controller.selectedValueOnBottomAppBar.value ==
                bottomTabItemsList[0]
                ? AppColors.unSelectedBlueButtonColor
                : AppColors
                .unselectedGridColor, // Set the initial color of the label
          ),
          textScaler: const TextScaler.linear(1),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
