import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/home/home_view.dart';

class LoginViewmodel extends BaseViewModel {
  String gmailtxt = "Enter Your Gmail";
  String passwordtxt = "Enter Your password";
  String chtxt = "Remember me";
  String logintxt = "Login";
  String forgettxt = "Forget the password?";
  String signUptxt = "Sign up";
  //=======================
  //check box function

  bool isChecked = false;
  void CheckBoxFunction(bool? value) {
    isChecked = value!;
    notifyListeners();
  }
  //=======================

  //=======================
  //password eye function

  bool obsuretext = true;
  void passwordFunction() {
    obsuretext = !obsuretext;
    notifyListeners();
  }
  //=======================

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void login(BuildContext context) {

    if (emailController.text == "user@gmail.com" && passController.text == "1234") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid Gmail or Password")));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
