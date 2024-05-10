import 'package:flutter/material.dart';

class TabItems extends StatelessWidget {
  const TabItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        tab_detail_item(Icons.grid_on_outlined, true),
        tab_detail_item(Icons.movie_outlined, false),
        tab_detail_item(Icons.person_pin_outlined, false),
        // Expanded(child: Container(
        //   child: Icon(Icons.person_pin_outlined),
        // ),
        // ),
      ],
    );
  }
}

class tab_detail_item extends StatelessWidget {
  const tab_detail_item(this.icon, this.active);
  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: active == true ? Colors.black : Colors.white,
                width: 1.5),
          ),
        ),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
