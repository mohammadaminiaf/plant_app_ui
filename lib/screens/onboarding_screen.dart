import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '/constants/colors.dart';
import '/screens/plants_screen.dart';
import '/widgets/plant_image.dart';
import '/widgets/round_next_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;

  @override
  initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void navigateToPlantScreen() {
    Navigator.of(context).pushNamed(
      PlantsScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: PageView(
                    controller: _controller,
                    children: const [
                      PlantImage(
                        url: 'assets/images/plant.png',
                      ),
                      PlantImage(
                        url: 'assets/images/plant2.png',
                      ),
                      PlantImage(
                        url: 'assets/images/plant3.png',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                        count: 3,
                        controller: _controller,
                        axisDirection: Axis.horizontal,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 7,
                          dotWidth: 7,
                          activeDotColor: AppColors.lightGreenColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40,
                        ),
                        child: _buildAppSlogan(),
                      ),
                      RoundNextButton(
                        onPressed: () {
                          if (_controller.page == 2.0) {
                            navigateToPlantScreen();
                          } else {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Skip button
          Positioned(
            right: 25,
            top: 50,
            child: TextButton(
              onPressed: navigateToPlantScreen,
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppSlogan() => RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Enjoy your\nLife with',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                fontSize: 37,
                fontFamily: 'Poppins',
              ),
            ),
            TextSpan(
              text: ' Plants',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 37,
              ),
            ),
          ],
        ),
      );
}
