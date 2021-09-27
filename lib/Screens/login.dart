import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Screens/signup.dart';
import 'package:getx_app/controllers/authcontroller.dart';
import 'package:getx_app/utils/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends GetWidget<AuthController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = new TextEditingController();
    TextEditingController passwordcontroller = new TextEditingController();
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(
          flex: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "Email",
                      hintStyle: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ))),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "Password",
                      hintStyle: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ))),
            ),
          ),
        ),
        Spacer(
          flex: 7,
        ),
        Container(
          width: 150,
          child: FloatingActionButton.extended(
              elevation: 1,
              backgroundColor: Colors.red[800],
              onPressed: () {
                controller.login(emailcontroller.text, passwordcontroller.text);
              },
              label: WidgetHelper.nunito('Login', 0, 20, Colors.white)),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
            onTap: () {
              Get.to(Signup());
            },
            child: WidgetHelper.snunito(
                "Don't have an account? Signup", 0, 18, Colors.black)),
        Spacer(),
      ],
    ));
  }
}
