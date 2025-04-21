import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../bottom_nav/bottomnav_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            UiHelper.CustomImage(img: 'Blinkit Onboarding Screen.png'),
            SizedBox(height: 30),
            UiHelper.CustomImage(img: 'image 10.png'),
            SizedBox(height: 30),

            UiHelper.CustomText(
              text: 'Bangladesh last minute app',
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            Card(
              elevation: 4,
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: 'Anik',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomText(
                      text: '12485444',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomnavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFEE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: "Login with",
                              color: Color(0xFFFFFFFF),
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                              fontfamily: 'bold',
                            ),
                            SizedBox(width: 7),
                            UiHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    UiHelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0xff9C9C9C),
                      fontweight: FontWeight.normal,
                      fontsize: 11,
                    ),
                    SizedBox(height: 15),
                    UiHelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0xff269237),
                      fontweight: FontWeight.normal,
                      fontsize: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
