import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signup/controller/login_controller.dart';
import 'package:signup/core/constant/color.dart';
import 'package:signup/view/screen/wallet_select.dart';
import 'package:signup/view/widget/onboarding/custombuttomauth.dart';
import 'package:signup/view/widget/onboarding/customtextbodyauth.dart';
import 'package:signup/view/widget/onboarding/customtextformauth.dart';
import 'package:signup/view/widget/onboarding/customtexttitleauth.dart';
import 'package:signup/view/widget/onboarding/logoauth.dart';
import 'package:signup/view/widget/onboarding/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "KeyTracker"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(text: ""),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustonTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          GestureDetector(
            onTap: () {
              controller.goToForgotPassword();
            },
            child: const Text(
              "Forgotten Password?",
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtomAuth(
            text: "Sign In",
            onPressed: () {
              controller.login();
            },
          ),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "Don't have an account ? ",
            texttwo: "Sign Up",
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}







