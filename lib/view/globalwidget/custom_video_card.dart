import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  final String imageurl;
  double width;
  final String rating;
  final String duration;
  final String profileimage;
  final String title;
  final String username;
  void Function()? onCardTaped;

  CustomVideoCard({
    this.width = 280,
    required this.rating,
    required this.imageurl,
    required this.duration,
    required this.profileimage,
    required this.title,
    required this.username,
    super.key,
    this.onCardTaped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 180,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage("$imageurl"))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        height: 28,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightBlack.withOpacity(.3),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorConstants.mainWhite,
                              size: 14,
                            ),
                            Text(
                              "$rating",
                              //" 4,5",
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: ColorConstants.mainWhite,
                        child: Icon(Icons.bookmark_outline),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                    child: Icon(
                      Icons.play_arrow,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        height: 28,
                        width: 58,
                        child: Text(
                          "$duration",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.lightBlack.withOpacity(.3))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("$profileimage"),
                  radius: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                //Text("by Niki Samantha",style: TextStyle(color: ColorConstants.neutral,),)
                Text("$username"),
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
