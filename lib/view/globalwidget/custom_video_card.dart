import 'package:flutter/material.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.white,size: 20,)
                    ],
                  ),
                  height: 25,
                  width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                  
                ),
                Spacer(),
                CircleAvatar()
              ],
            ),
            CircleAvatar(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
  }
}
