import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:initialsetup/screens/HomeScreen/HomeScreenController.dart';
import 'package:initialsetup/screens/welcome/welcome_controller.dart';

import '../../utils/utilss/strings.dart';
import '../../widgets/BottomAppbarWidget.dart';
import '../Api/connectivity_service.dart';
import '../base_page/base-page_ui.dart';


const List<Icon> bottomTabBarItems = [];
BottomAppBarWidget bottomAppBarWidget = const BottomAppBarWidget();

final bottomTabItemsList = [
  AppStrings.homePageOne,
  AppStrings.homePageTwo,
];
String selectedTabBarItem = "";
class HomeScreenui extends GetView<Homescreencontroller> {
  HomeScreenui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getMyWidget();
  }

  Widget _getMyWidget() {
    return PopScope(
      onPopInvoked: (didPop) {},
      child: BasePage(
          bottomNavigationBar: bottomAppBarWidget,
          body: IndexedStack(
            children: [ ValueListenableBuilder(valueListenable: changedValueNotifier, builder: (context, value, child) {

            },) ],
          )),
    );
  }
}
