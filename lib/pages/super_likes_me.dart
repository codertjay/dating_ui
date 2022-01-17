import 'package:dating_ui/pages/profile_page.dart';
import 'package:dating_ui/styleguide/colors.dart';
import 'package:dating_ui/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SuperLikesMePage extends StatelessWidget {
  // const SuperLikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfilePage()))
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 4),
            child: Text(
              'Select',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Super Liked Me",
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            ),
          ),
          Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: subTitleStyle.copyWith(color: hintTextColor)),
                autocorrect: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Super Likes",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        )),
                  ],
                ),
                Text(
                  "1h",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: ListTile(
                        title: Text(
                          "Codertjay",
                          style: titleStyle,
                        ),
                        subtitle: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 15,
                            ),
                            Text(
                              "34 Kilometers",
                              style: whiteSubHeadingTextStyle.copyWith(
                                  color: Colors.black54, fontSize: 14),
                            )
                          ],
                        ),
                        leading: ClipOval(
                          child: Image.asset(
                            "assets/images/codertjay.jpg",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        trailing: SizedBox(
                          width: 75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Online",
                                      style: whiteSubHeadingTextStyle.copyWith(
                                        color: Colors.green,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.star,
                                  color: blueColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
