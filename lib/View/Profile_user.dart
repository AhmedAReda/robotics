import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/View/Our_teams.dart';
import '../Constants.dart';
import '../Controler/Home.dart';
import '../Controler/Profile_user.dart';
import 'Best_members.dart';
import 'Edit_profile_uesr.dart';

class Profile_user extends StatefulWidget {
  const Profile_user({super.key});

  @override
  State<Profile_user> createState() => _Profile_userState();
}

class _Profile_userState extends State<Profile_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Details_of_profile_user(
                  Cover_photo: 'images/46.png',
                  User_photo: 'images/47.png',
                  User_name_account: 'Ahmed Reda',
                  Nickname: '@ Stitch',
                  Link_image_phone: 'images/48.png',
                  Link_text_phone: '01067288182',
                  Link_image_email: 'images/49.png',
                  Link_text_email: 'reda25859@gmail.com',
                  Link_image_check: 'images/50.png',
                  Link_text_check: 'check this',
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.55,
                  //color: Colors.green,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.4,
                            //color: Colors.pink,
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      //color: Colors.amberAccent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.373,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.075,
                                            //color: Colors.purple,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.153,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.07,
                                                          //color: Colors.pink,
                                                          child: Stack(
                                                            children: [
                                                              Center(
                                                                child: Icon(
                                                                  Icons.circle,
                                                                  size: 36,
                                                                  color: Color(
                                                                      0xff111111),
                                                                  /*shadows: [
                                                                    Shadow(
                                                                        blurRadius:
                                                                            4,
                                                                        color: Colors
                                                                            .white),
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .white,
                                                                      blurRadius:
                                                                          5,
                                                                    ),
                                                                  ],*/
                                                                ),
                                                              ),
                                                              Center(
                                                                child:
                                                                    IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    Get.to(
                                                                        Edit_profile_uesr());
                                                                    print(
                                                                        "success");
                                                                  },
                                                                  icon: Icon(
                                                                    Icons.edit,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Small_space(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Last Seen",
                    style: title,
                  ),
                ],
              ),
            ),
            Small_space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Best_members());
                    print("success");
                  },
                  child: Home_container(
                    photo: 'images/26.png',
                    text: 'Best Members',
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.15,
                  //color: Colors.pink,
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Our_teams());
                    print("success");
                  },
                  child:
                      Home_container(photo: "images/39.png", text: "Our Team"),
                ),
              ],
            ),
            Big_space(),
          ],
        ),
      ),
    );
  }
}
