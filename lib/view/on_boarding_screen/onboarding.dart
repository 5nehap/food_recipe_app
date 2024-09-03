import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/model/constants/image_constants.dart';
import 'package:food_recipe_app/view/bottom_navbar_screen/bottom_navbar.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Stack(children: [
          //first section - for building background image
          _buildBackGroundImage(),
          //second section - for building gradient section
          _buildGradientSection(context),
          //third section - create header
          _buildHeaderSection(),
        ]),
      ),
    );
  }

  Positioned _buildGradientSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 64),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 56),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbar(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                  color: ColorConstants.PRIMARY_COLOR,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start Cooking",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildBackGroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}

class _buildHeaderSection extends StatelessWidget {
  const _buildHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 13,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          // Text(
          //   "data",
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
          RichText(
              text: TextSpan(
                  text: "60k+",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  children: [
                TextSpan(
                    text: " Premium recipes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ))
              ]))
        ],
      ),
    );
  }
}