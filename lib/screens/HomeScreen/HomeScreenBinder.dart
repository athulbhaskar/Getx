import 'package:get/get.dart';
import 'package:initialsetup/screens/HomeScreen/HomeScreenController.dart';

class Homescreenbinder implements Bindings {
  @override
  void dependencies() {
    Get.put(Homescreencontroller());
  }
}