import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/on_boarding_screen/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Onboarding(),
            ));
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.neutral,
      body: Center(
        child: Image.asset(height: 120, "asset/images/Background (1).png"),
      ),
    );
  }
}
