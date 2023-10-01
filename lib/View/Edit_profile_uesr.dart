import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/View/Profile_user.dart';
import '../Controler/Edit_profile_uesr.dart';

class Edit_profile_uesr extends StatefulWidget {
  const Edit_profile_uesr({super.key});

  @override
  State<Edit_profile_uesr> createState() => _Edit_profile_uesrState();
}

class _Edit_profile_uesrState extends State<Edit_profile_uesr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  editprofile(
                    Cover_photo_edit: 'images/53.png',
                    Main_photo_edit: 'images/54.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.38,
                              //color: Colors.white24,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.153,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        //color: Colors.pink,
                                        child: Center(
                                            child: Stack(
                                          children: [
                                            Center(
                                              child: Icon(
                                                Icons.circle,
                                                size: 36,
                                                color: Color(0xff111111),
                                                shadows: [
                                                  Shadow(
                                                      blurRadius: 4,
                                                      color: Colors.white),
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    blurRadius: 5,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Center(
                                              child: IconButton(
                                                onPressed: () {
                                                  print("success");
                                                },
                                                icon: Icon(
                                                  Icons.camera_alt_outlined,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          //color: Colors.white24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Icon(
                                          Icons.circle,
                                          color: Colors.orange,
                                          size: 50,
                                        )),
                                        Center(
                                            child: IconButton(
                                          onPressed: () {
                                            print("success");
                                          },
                                          icon: Icon(
                                            Icons.camera_alt_outlined,
                                            color: Colors.black,
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.985,
                              //color: Colors.white24,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    //color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Get.to(Profile_user());
                                            print("success");
                                          },
                                          child: Text(
                                            "Confirm",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffEF6E10),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0015,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.5,
                                          color: Colors.grey,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Discard",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffE3473B),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
