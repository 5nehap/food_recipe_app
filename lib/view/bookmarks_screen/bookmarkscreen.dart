import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/globalwidget/custom_video_card.dart';
import 'package:food_recipe_app/view/recipe_details_screen/recipe_details_screen.dart';

class Bookmarkscreen extends StatefulWidget {
  const Bookmarkscreen({super.key});

  @override
  State<Bookmarkscreen> createState() => _BookmarkscreenState();
}

class _BookmarkscreenState extends State<Bookmarkscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Saved recipes",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
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
        ),
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => CustomVideoCard(
                  onCardTaped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(

                          builder: (context) => RecipeDetailsScreen(
                            recipetitle: DummyDb.trendingNowList[index]["title"],
                            recipeimage: DummyDb.trendingNowList[index]["imageurl"],
                            reciperating:DummyDb.trendingNowList[index]["rating"],
                            recipeprofile: DummyDb.trendingNowList[index]["profileimage"],
                            recipeusername: DummyDb.trendingNowList[index]["username"],
                          
                          ),
                        ));
                  },
                  width: double.infinity,
                  rating: DummyDb.trendingNowList[index]["rating"],
                  imageurl: DummyDb.trendingNowList[index]["imageurl"],
                  duration: DummyDb.trendingNowList[index]["duration"],
                  title: DummyDb.trendingNowList[index]["title"],
                  profileimage: DummyDb.trendingNowList[index]["profileimage"],
                  username: DummyDb.trendingNowList[index]["username"],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
            itemCount: DummyDb.trendingNowList.length),
            
            
      ),
    );
  }
}
