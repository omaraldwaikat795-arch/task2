import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/model/username.dart';

class Instgram extends StatefulWidget {
  const Instgram({super.key});

  @override
  State<Instgram> createState() => _InstgramState();
}

class _InstgramState extends State<Instgram> {
  List<Username> users = [
    Username(
      id: 1,
      name: "Your story",
      image:
          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
    ),
    Username(
      id: 2,
      name: "karenne",
      image:
          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
    ),
    Username(
      id: 3,
      name: "therok",
      image:
          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
    ),
    Username(
      id: 4,
      name: "mix",
      image:
          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
    ),
    Username(
      id: 5,
      name: "max",
      image:
          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("instagram"),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 10),
          Icon(Icons.message),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          users[index].image ??
                              "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      users[index].name ??
                          "assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            width: 400,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 400,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x493C3C43),
                          blurRadius: 0,
                          offset: Offset(0, 0.33),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 52,
                  top: 30,
                  child: Text(
                    'Tokyo, Japan',
                    style: TextStyle(
                      color: const Color(0xFF262626),
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
                Positioned(
                  left: 52,
                  top: 11,
                  child: Text(
                    'joshua_l',
                    style: TextStyle(
                      color: const Color(0xFF262626),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.38,
                      letterSpacing: -0.10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:450 ,
            height: 375,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imags/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: 100,
            height: 100,
            child: Stack(
              children: [
                Positioned(
            right: 60,
                  child: Icon(Icons.favorite_border),


                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
