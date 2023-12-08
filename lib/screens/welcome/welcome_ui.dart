

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:initialsetup/screens/welcome/welcome_controller.dart';
import 'package:initialsetup/widgets/custom_button.dart';

import '../base_page/base-page_ui.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
             CustomButton(text: "InApp Notification", buttonColor: Colors.black, textColor: Colors.white, buttonAction: ()=>{
               controller.buttonClick()
             }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      );
  }
}
