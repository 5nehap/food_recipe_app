import 'package:flutter/material.dart';
import 'package:food_recipe_app/view/bookmarks_screen/bookmarkscreen.dart';
import 'package:food_recipe_app/view/create_recipe_screen/create_recipe_screen.dart';
import 'package:food_recipe_app/view/homescreen/homescreen.dart';
import 'package:food_recipe_app/view/profilescreen/profilescreen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;
  List screens = [
    Homescreen(),
    Bookmarkscreen(),
    Container(
      color: Colors.blue,
    ),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipeScreen(),
              ));
        },
        child: Icon(Icons.add),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
