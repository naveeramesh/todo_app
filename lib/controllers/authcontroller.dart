import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getx_app/utils/root.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;
  @override
  void onInit() {
    // TODO: implement onInit
    _user.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  void createuser(String email, String password, String username) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(Root());
    } catch (e) {
      Get.snackbar('Error creating Account !', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(Root());
    } catch (e) {
      Get.snackbar('Error in Login!', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar('Error in signOut!', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
