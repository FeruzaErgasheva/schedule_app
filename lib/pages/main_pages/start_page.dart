import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:lesson36_homework/pages/main_pages/onboarding_page.dart';
import 'package:lesson36_homework/utils/extensions/extensions.dart';
import 'package:lottie/lottie.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              200.h(),
              AvatarGlow(
                glowColor: Colors.grey.shade300,
                animate: true,
                repeat: true,
                duration: Duration(seconds: 1),
                child: Container(
                  child: Image.network(
                      "https://png.pngtree.com/png-vector/20221013/ourmid/pngtree-calendar-icon-logo-2023-date-time-png-image_6310337.png"),
                ),
              ),
              70.h(),
              Lottie.network("assets/animations/animation_start.json")
            ],
          ),
        ),
      ),
    );
  }
}
