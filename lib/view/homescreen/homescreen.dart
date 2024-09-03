import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/custom_video_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //section 1
          _titleSection(),
          // section 2
          Column(
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
              SizedBox(height: 16,),
              CustomVideoCard(),
              SizedBox(height: 20,),
              CustomVideoCard(),
              
            ],
          )
        ],
      ),
    );
  }

  Column _titleSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
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

