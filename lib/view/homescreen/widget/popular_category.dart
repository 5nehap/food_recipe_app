import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';

class popular_category extends StatelessWidget {
  String image;
  String title;
  String duration;
  popular_category({
    required this.image,
    required this.title,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.mainWhite,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 59,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Time",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12, right: 15, bottom: 12),
                  child: Row(
                    children: [
                      Text(
                        duration,
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: ColorConstants.mainWhite,
                        child: Icon(
                          Icons.bookmark_outline_rounded,
                          color: ColorConstants.mainBlack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage("$image"),
          ),
        )
      ],);
  }
}
