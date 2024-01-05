import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:initialsetup/screens/login/login_controller.dart';
import '../base_page/base-page_ui.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap:controller.buttonClick() ,
                child: Image.asset("assets/images/logo.png",
                    height: screenHeight * 0.1,
                    fit: BoxFit.contain,
                    alignment: Alignment.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
