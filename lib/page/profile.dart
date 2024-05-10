import 'package:flutter/material.dart';
import 'package:uts_rahmatfadilah/widget/detail_info.dart';
import 'package:uts_rahmatfadilah/widget/galery_kontak.dart';
import 'package:uts_rahmatfadilah/widget/option_profile.dart';
import 'package:uts_rahmatfadilah/widget/profile_widget.dart';
import 'package:uts_rahmatfadilah/widget/story_item.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  String username = "rhmtf_";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.lock_outline,
            ),
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.expand_more_outlined),
            Container(
              child:
                  Icon(Icons.fiber_manual_record, size: 15, color: Colors.red),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.alternate_email_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileWidget(),
              DetailInfo("Profile", "4"),
              DetailInfo("Followers", "985"),
              DetailInfo("Following", "356")
            ],
          ),
          SizedBox(
            height: 15,
          ),
          OptionProfile(),
          SizedBox(
            height: 15,
          ),
          StoryItem(),
          SizedBox(
            height: 15,
          ),
          TabItems(),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              final imageUrls = [
                'images/shadow.jpg',
                'images/siluet.jpg',
                'images/stand.jpeg',
                'images/sit.jpg',
              ];
              return Image.asset(imageUrls[index], fit: BoxFit.cover);
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              size: 30,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            label: "Tambah",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              size: 30,
            ),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black87,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 15,
                // backgroundColor: Colors.black,
                child: Image.asset(
                  'images/superman.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
