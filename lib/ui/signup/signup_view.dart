import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/home/home_view.dart';
import 'package:stacked_app/ui/signup/signup_viewmodel.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignupViewmodel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/SignUp.png"),
                  Text(
                    "SignUp To Your Account",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 43),

                  //=============================================

                  // textfields
                  TextField(
                    decoration: InputDecoration(
                      hintText: model.gmailtxt,
                      prefixIcon: Icon(Icons.mail, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: model.passwordtxt,
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),

                  SizedBox(height: 88),

                  //==========================================
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.blue[600],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        model.logintxt,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
