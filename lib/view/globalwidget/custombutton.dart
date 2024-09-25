import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.height,
    this.width,
    required this.text,
    this.onButtonpressed,
    super.key,
  });
  final double? height;
  final double? width;
  final String text;
  final void Function()? onButtonpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonpressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: ColorConstants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
