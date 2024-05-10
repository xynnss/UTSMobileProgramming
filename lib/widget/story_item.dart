import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item('highlight', 'images/sit.jpg'),
          item('sorotan', 'images/siluet.jpg'),
          item('highlight', 'images/superhero.png'),
          item('new', 'images/add.png'),
        ],
      ),
    );
  }
}

class item extends StatelessWidget {
  item(this.title, this.PhotoStory);
  final String title;
  final String PhotoStory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.grey),
            ),
            Container(
              height: 77,
              width: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                image: DecorationImage(
                  image: AssetImage(PhotoStory),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(title)
      ],
    );
  }
}
