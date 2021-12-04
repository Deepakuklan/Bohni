class OnBoarding {
  final String title, subtitle;
  final String image;

  OnBoarding({
    required this.subtitle,
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to bohni',
    image: 'assets/image/Onboarding.png',
    subtitle: 'Performance Driven OOH \n Ad-Tech Platform',
  ),
];
