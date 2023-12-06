import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:initialsetup/screens/base_page/base-page_binding.dart';
import 'package:initialsetup/utils/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///For Keep App In Portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      title: 'Initial Setup GetX',
      theme: ThemeData(
          // primarySwatch: primarySwatchColor,
          // scaffoldBackgroundColor: AppColors.pageBackground
      ),
      debugShowCheckedModeBanner: false,///Remove Debug Banner
      ///For getx Data Routes
      initialRoute: Routes.welcome,
      getPages: appPages,

      initialBinding: BaseBinding(),
    );
  }
}
