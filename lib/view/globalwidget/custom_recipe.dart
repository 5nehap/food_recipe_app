import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';

class CustomRecipe extends StatelessWidget {
  final String title;
  final String image;
  final String ingredients;
  final String rating;

  const CustomRecipe({
    super.key,
    required this.title,
    required this.image,
    required this.ingredients,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 223,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.lightBlack.withOpacity(.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorConstants.white,
                        size: 14,
                      ),
                      Text(
                        rating,
                        style: TextStyle(
                          color: ColorConstants.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: ColorConstants.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: ColorConstants.PRIMARY_COLOR,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 162,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              ingredients,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
