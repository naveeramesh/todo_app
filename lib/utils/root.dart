import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_app/Screens/home.dart';
import 'package:getx_app/Screens/login.dart';
import 'package:getx_app/controllers/authcontroller.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(
        () => Get.find<AuthController>().user != null ? Home() : Login());
  }
}
