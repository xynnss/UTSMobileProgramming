import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 118,
          height: 118,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey,
                  Colors.grey,
                ]),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: const DecorationImage(
                    image: AssetImage('images/superman.png'),
                    fit: BoxFit.cover),
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            Positioned(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
