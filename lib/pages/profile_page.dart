import 'package:dating_ui/commons/my_info.dart';
import 'package:dating_ui/commons/opaque_image.dart';
import 'package:dating_ui/commons/profile_big_card.dart';
import 'package:dating_ui/commons/profile_info_card.dart';
import 'package:dating_ui/pages/super_likes_me.dart';
import 'package:dating_ui/styleguide/colors.dart';
import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                      imageUrl: "assets/images/codertjay.jpg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SuperLikesMePage()))
                          },
                          child: ProfileInfoBigCard(
                            firstTest: '13',
                            secondText: "New matches",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstTest: '42',
                          secondText: "Unnamed Matches",
                          icon: Icon(
                            Icons.star,
                            size: 32,
                            color: blueColor,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoBigCard(
                          firstTest: '33',
                          secondText: "All Matches",
                          icon: Icon(
                            Icons.mood,
                            size: 32,
                            color: blueColor,
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstTest: '14',
                          secondText: "Rematches",
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: blueColor,
                            size: 32,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SuperLikesMePage()))
                          },
                          child: ProfileInfoBigCard(
                            firstTest: '13',
                            secondText: "Super Likes",
                            icon: Icon(
                              Icons.favorite,
                              color: blueColor,
                              size: 32,
                            ),
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstTest: '13',
                          secondText: "New matches",
                          icon: Icon(
                            Icons.star,
                            color: blueColor,
                            size: 32,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight / 3,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                children: [
                  ProfileInfoCard(
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  ProfileInfoCard(
                      hasIcon: true,
                      icon: Icon(
                        Icons.image,
                        color: Colors.blue,
                        size: 30,
                      )),
                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "Level",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
