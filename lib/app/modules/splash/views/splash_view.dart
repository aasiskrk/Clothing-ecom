import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../controllers/splash_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;

    // Username and password controllers
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Constants.logo,
                  width: 120,
                  height: 90,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to home page when Continue is pressed
                          Get.offAllNamed('/base');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 16,color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Implement Forgot Password functionality
                              // You can navigate to the forgot password screen here
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: theme.primaryColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          TextButton(
                            onPressed: () {
                              // Implement Sign Up functionality
                              // You can navigate to the sign-up screen here
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: theme.primaryColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
