import 'package:flutter/material.dart';
import 'package:lesson36_homework/utils/components/onboarding_screens/onboarding_screen1.dart';
import 'package:lesson36_homework/utils/components/onboarding_screens/onboarding_screen2.dart';
import 'package:lesson36_homework/utils/components/onboarding_screens/onboarding_screen3.dart';
import 'package:lesson36_homework/pages/login_register/login_register_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnBoardingPage extends StatefulWidget {
//   const OnBoardingPage({super.key});

//   @override
//   State<OnBoardingPage> createState() => _OnBoardingPageState();
// }

// class _OnBoardingPageState extends State<OnBoardingPage> {
//   PageController pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           PageView(
//             children: [
//               OnboardingScreen1(),
//               OnboardingScreen2(),
//               OnboardingScreen3()
//             ],
//           ),
//           Text("bbb")
//         ],
//       ),
//     );
//   }
// }

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController pageController = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: PageView(
                onPageChanged: (index) {
                  onLastPage = (index == 2);
                  setState(() {});
                },
                controller: pageController,
                children: const [
                  OnboardingScreen1(),
                  OnboardingScreen2(),
                  OnboardingScreen3(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(
                  dotHeight: 12.0,
                  dotWidth: 12.0,
                  spacing: 16.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
              child: Column(
                children: [
                  const Text(
                    "Set Your Schedule",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Quicky see your upcoming event, task, conference calls, weather and more",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                        fontSize: 16,
                        letterSpacing: 1.1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginRegister(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              "Start",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
