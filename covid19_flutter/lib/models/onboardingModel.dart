import 'package:flutter/material.dart';

class OnboardingScreens {
  String imageSource;
  String title;
  String subtitle;

  OnboardingScreens({
    @required this.imageSource,
    @required this.title,
    @required this.subtitle,
  });
}

List<OnboardingScreens> onboardingScreen = [
  OnboardingScreens(
    imageSource: 'assets/images/onboarding1.png',
    title: 'Wash Your Hands',
    subtitle:
        'Clean your hands often. Use soap and water, or an alcohol-based hand rub.',
  ),
  OnboardingScreens(
    imageSource: 'assets/images/onboarding2.png',
    title: 'Wear Mask',
    subtitle:
        'Cover mouth and nose with mask & no gaps between your face and the mask.',
  ),
  OnboardingScreens(
    imageSource: 'assets/images/onboarding3.png',
    title: 'Use Nose Rag',
    subtitle:
        'Cover your nose and mouth with your bent elbow or a tissue when you cough.',
  ),
];
