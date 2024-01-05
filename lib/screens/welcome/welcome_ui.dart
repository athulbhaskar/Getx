import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:initialsetup/screens/welcome/welcome_controller.dart';

import '../base_page/base-page_ui.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                controller.buttonClick();
              },
              child: Image.asset("assets/images/logo.png",
                  height: screenHeight * 0.1,
                  fit: BoxFit.contain,
                  alignment: Alignment.center),
            ),
          ),
        ],
      ),
    );
  }
}
