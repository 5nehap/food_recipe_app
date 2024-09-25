import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/custombutton.dart';
import 'package:food_recipe_app/view/globalwidget/incredient_section.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Create recipe",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/5718067/pexels-photo-5718067.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            fit: BoxFit.cover),
                        color: Colors.yellow),
                    child: Center(
                        child: CircleAvatar(
                      radius: 24,
                      backgroundColor: ColorConstants.mainBlack.withOpacity(.3),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorConstants.mainWhite,
                      ),
                    )),
                  ),
                  Positioned(
                    top: 8,
                    right: 10,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.draw_outlined,
                        color: ColorConstants.PRIMARY_COLOR,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Bento lunch box ideas for work",
                  hintStyle: TextStyle(color: ColorConstants.neutral),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: IngridientSection(
                  gram: "10",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                  name: "serves",
                  haveArrow: true,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: IngridientSection(
                  gram: "10",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                  name: "serves",
                  haveArrow: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              incrediandsrow(),
              SizedBox(
                height: 16,
              ),
              incrediandsrow(),
              SizedBox(
                height: 16,
              ),
              incrediandsrow(),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "+",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Add new Ingredient",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(text: "Save my recipes",
              height: 50,
              width:double.infinity,
               onButtonpressed: () {})
            ],
          ),
        ),
      ),
    );
  }

  Row incrediandsrow() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Bento lunch box ideas for work",
              hintStyle: TextStyle(color: ColorConstants.neutral),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Bento lunch box ideas for work",
              hintStyle: TextStyle(color: ColorConstants.neutral),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: ColorConstants.PRIMARY_COLOR, width: 1),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        HugeIcon(
            icon: HugeIcons.strokeRoundedRemoveSquare,
            color: ColorConstants.mainBlack)
      ],
    );
  }
}
