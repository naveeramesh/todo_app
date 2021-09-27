import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Screens/login.dart';
import 'package:getx_app/controllers/authcontroller.dart';
import 'package:getx_app/utils/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends GetWidget<AuthController> {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = new TextEditingController();
    TextEditingController passwordcontroller = new TextEditingController();
    TextEditingController usernamecontroller = new TextEditingController();
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
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "Username",
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
          flex: 4,
        ),
        Container(
          width: 150,
          child: FloatingActionButton.extended(
              elevation: 1,
              backgroundColor: Colors.red[800],
              onPressed: () {
                controller.createuser(emailcontroller.text,
                    passwordcontroller.text, usernamecontroller.text);
              },
              label: WidgetHelper.nunito('SignUp', 0, 20, Colors.white)),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
            onTap: () {
              Get.to(Login());
            },
            child: WidgetHelper.snunito(
                "Have an account? Login", 0, 18, Colors.black)),
        Spacer(),
      ],
    ));
  }
}
