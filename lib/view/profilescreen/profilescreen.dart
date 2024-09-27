import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/globalwidget/custom_recipe.dart';
import 'package:food_recipe_app/view/globalwidget/custom_video_card.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            size: 24,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxctjU21pUENIsGN1F4qY21P7GfdEbhTMp2g&s"),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.PRIMARY_COLOR),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: ColorConstants.PRIMARY_COLOR,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Alessandra Blair",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.mainBlack),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hello world I’m Alessandra Blair, I’m \nfrom Italy 🇮🇹 I love cooking so much!",
                    style: TextStyle(
                        color: ColorConstants.neutral,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            customdataprofile(),
            Divider(),
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.white,
                unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                indicator: BoxDecoration(
                    color: ColorConstants.PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    child: Text("Video"),
                  ),
                  Tab(
                    child: Text("Recipe"),
                  ),
                ]),
            Expanded(
                child: TabBarView(
              children: [
                ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => CustomVideoCard(
                          rating: DummyDb.trendingNowList[index]["rating"],
                          imageurl: DummyDb.trendingNowList[index]["imageurl"],
                          duration: DummyDb.trendingNowList[index]["duration"],
                          title: DummyDb.trendingNowList[index]["title"],
                          profileimage: DummyDb.trendingNowList[index]
                              ["profileimage"],
                          username: DummyDb.trendingNowList[index]["username"],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 16,
                        ),
                    itemCount: DummyDb.trendingNowList.length),
                ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => CustomRecipe(
              image: DummyDb.Recipecard[index]["image"],
              title: DummyDb.Recipecard[index]["title"],
              rating: DummyDb.Recipecard[index]["rating"],
              ingredients: DummyDb.Recipecard[index]["Ingredients"],
            ),
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: DummyDb.Recipecard.length),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget customdataprofile() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Recipe",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.neutral),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "3",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Videos",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.neutral),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "13",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.neutral),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "14k",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.neutral),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "120",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
