
import 'package:flutter/material.dart';
import 'package:lesson36_homework/pages/login_register/register/register_page.dart';
import 'package:lesson36_homework/pages/main_pages/first_page.dart';
import 'package:lesson36_homework/utils/components/button_widget.dart';
import 'package:lesson36_homework/utils/extensions/extensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome back",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                10.h(),
                const Text(
                  "Let's Login to Connect your email",
                  style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500),
                ),
                20.h(),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "name@example.com",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      )),
                ),
                20.h(),
                TextField(
                  obscureText: passwordVisibility,
                  decoration: InputDecoration(
                      suffixIcon: passwordVisibility
                          ? GestureDetector(
                              onTap: () {
                                passwordVisibility = !passwordVisibility;
                                setState(() {});
                              },
                              child: const Icon(Icons.visibility_off))
                          : GestureDetector(
                              onTap: () {
                                passwordVisibility = !passwordVisibility;
                                setState(() {});
                              },
                              child: const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(
                          Icons.key,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "**********",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      )),
                ),
                20.h(),
                const Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                20.h(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    10.w(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                      child: const Text(
                        "Sign up here",
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FirstPage(),
                          ));
                    },
                    child: ButtonWidget(btnText: "Log in")),
                10.h(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                ),
                20.h(),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "By continuing you agree to Loana's",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "\nTerms of Use",
                        style: TextStyle(
                            height: 1.5,
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ),
                      TextSpan(text: " &"),
                      TextSpan(
                        text: " Privacy Policy",
                        style: TextStyle(
                            height: 1.5,
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
