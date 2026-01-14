import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/login/login_viewmodel.dart';
import 'package:stacked_app/ui/signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewmodel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/login.png"),
                    SizedBox(height: 10),
                    TextField(
                      controller: model.emailController,
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
                    SizedBox(height: 10),

                    TextField(
                      controller: model.passController,
                      obscureText: model.obsuretext,
                      decoration: InputDecoration(
                        hintText: model.passwordtxt,
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        suffixIcon: IconButton(
                          onPressed: () {
                            model.passwordFunction();
                          },
                          icon: Icon(model.obsuretext ? Icons.visibility_off: Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),

                    SizedBox(height: 16),

                    //============================================

                    // check box ka function lagana hai
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: model.isChecked,
                          onChanged: model.CheckBoxFunction,
                          activeColor: Colors.blue,
                        ),

                        SizedBox(height: 5),
                        Text(model.chtxt),
                      ],
                    ),
                    SizedBox(height: 16),

                    //==========================================
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          model.login(context);
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
                    SizedBox(height: 20),

                    //====================================================
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        model.forgettxt,
                        style: TextStyle(color: Colors.blue[700]),
                      ),
                    ),
                    //==========================================================
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("or continue with"),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),

                    SizedBox(height: 20),

                    //============================================
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //====================
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 207, 206, 206),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 70,
                            width: 100,
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          //===================
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 207, 206, 206),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 70,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Image.asset(
                                "assets/images/googleImage.png",
                              ),
                            ),
                          ),
                          //===================
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 207, 206, 206),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 70,
                            width: 100,
                            child: Icon(FontAwesomeIcons.apple),
                          ),
                          //===================
                          SizedBox(width: 10),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),

                    //================================================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Don't have an account?"),
                        SizedBox(width: 0),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupView(),
                              ),
                            );
                          },
                          child: Text(
                            model.signUptxt,
                            style: TextStyle(color: Colors.blue[800]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
