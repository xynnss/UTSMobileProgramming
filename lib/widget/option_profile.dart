import 'package:flutter/material.dart';

class OptionProfile extends StatelessWidget {
  const OptionProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.black),
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
                fixedSize: Size(200, 20)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Share Profile",
              style: TextStyle(color: Colors.black),
            ),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.white,
              fixedSize: Size(200, 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.white,
              // fixedSize: Size(10, 20),
            ),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Icon(
                Icons.person_add_rounded,
                color: Colors.black87,
              ),
            ),
          )
        ],
      ),
    );
  }
}
