import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson36_homework/pages/login_register/login/login_page.dart';
import 'package:lesson36_homework/pages/login_register/register/register_page.dart';
import 'package:lesson36_homework/utils/extensions/extensions.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 90, right: 90),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Let's start your Schedule activity",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
              ),
              20.h(),
              const Text(
                "Quicky see your upcoming event, task, conference calls, weather and more",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.7,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              30.h(),
              Container(
                height: 350,
                child: Image.network(
                  "https://images.contentstack.io/v3/assets/bltb428ce5d46f8efd8/blt52e97ab917488c04/643da35ccdbfcfa6bce06402/host_rc_calendar_l_2x_en-US.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        30.h(),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 160),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                20.h(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 50),
                        child: Row(
                          children: [
                            Image.network(
                              "assets/images/apple.png",
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            ),
                            15.w(),
                            const Text(
                              "Apple",
                              style: TextStyle(),
                            )
                          ],
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      child: Row(
                        children: [
                          Image.network(
                            "assets/images/google.png",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                          15.w(),
                          const Text(
                            "Google",
                            style: TextStyle(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                20.h(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Have Account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    15.w(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
