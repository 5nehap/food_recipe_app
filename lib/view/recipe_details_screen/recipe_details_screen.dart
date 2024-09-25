import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/globalwidget/custombutton.dart';
import 'package:food_recipe_app/view/globalwidget/incredient_section.dart';

class RecipeDetailsScreen extends StatelessWidget {
  String recipetitle;
  String recipeimage;
  String reciperating;
  String recipeprofile;
  String recipeusername;
  RecipeDetailsScreen({
    super.key,
    required this.recipetitle,
    required this.recipeimage,
    required this.reciperating,
    required this.recipeprofile,
    required this.recipeusername,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.more_horiz,
            color: ColorConstants.mainBlack,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
        // title: Text(recipetitle),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              recipetitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            detailcard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Incredients",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text("5 items")
              ],
            ),
           
            SizedBox(height: 20,),
            SizedBox(
                height: 900,
                child: ListView.separated(
                  padding: EdgeInsets.all(8),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DummyDb.IngridientList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => IngridientSection(
                    gram: DummyDb.IngridientList[index]["gram"],
                    image: DummyDb.IngridientList[index]["image"],
                    name: DummyDb.IngridientList[index]["name"],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Padding detailcard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 320,
        width: 375,
        child: Column(
          children: [
            Container(
              height: 200,
              // width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(recipeimage),
                    fit: BoxFit.cover,
                  )),
              child: Center(
                child: CircleAvatar(
                  child: Icon(Icons.play_arrow),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  reciperating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "(300 Reviews)",
                  style: TextStyle(color: ColorConstants.lightGrey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 21.5,
                  backgroundImage: NetworkImage(recipeprofile),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipeusername,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorConstants.PRIMARY_COLOR,
                        ),
                        Text(
                          "Bali,indonesia",
                          style: TextStyle(
                              color: ColorConstants.neutral,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                CustomButton(
                  text: 'follow',
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            
          ],
        ),
      ),
    );
  }
}
