import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/dummy_db.dart';
import 'package:food_recipe_app/view/globalwidget/custom_video_card.dart';
import 'package:food_recipe_app/view/homescreen/widget/popular_category.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //section 1
              _titleSection(),
              // section 2
              _trendingsection(),
              // section 3
              _popularsection()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _popularsection() {
    return SizedBox(
        //height: 353,
        child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 16),
                child: Text(
                  "popular category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 34,
                width: 387,
                child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: Colors.white,
                    unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                    indicatorSize: TabBarIndicatorSize.tab,
                    // indicatorColor: Colors.red,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorConstants.PRIMARY_COLOR),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(
                        child: Text(
                          "salad",
                        ),
                      ),
                      Tab(
                        child: Text("Breakfast"),
                      ),
                      Tab(
                        child: Text("Apetizer"),
                      ),
                      Tab(
                        child: Text("noodle"),
                      ),
                      Tab(
                        child: Text("Lunch"),
                      ),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
               SizedBox(
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => popular_category(
                    image: DummyDb.popularcategory[index]["image"],
                    duration: DummyDb.popularcategory[index]["duration"],
                    title: DummyDb.popularcategory[index]["title"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.popularcategory.length),
        ),
            ])));
  }

  Column _trendingsection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                "see all",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.red,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),

        //video player section
        SizedBox(
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
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
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Row(
            children: [
              Text(
                "Find best recipes \nfor cooking",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "search recipes",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        )
      ],
    );
  }
}

