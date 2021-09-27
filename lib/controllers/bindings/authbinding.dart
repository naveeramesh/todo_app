import 'package:get/get.dart';
import 'package:getx_app/controllers/authcontroller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<AuthController>(() => AuthController());
  }
}