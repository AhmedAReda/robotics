import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import '../View/Home.dart';

class Details_of_profile_user extends StatelessWidget {
  final String Cover_photo;
  final String User_photo;
  final String User_name_account;
  final String Nickname;
  final String Link_image_phone;
  final String Link_text_phone;
  final String Link_image_email;
  final String Link_text_email;
  final String Link_image_check;
  final String Link_text_check;

  const Details_of_profile_user({
    super.key,
    required this.Cover_photo,
    required this.User_photo,
    required this.User_name_account,
    required this.Nickname,
    required this.Link_image_phone,
    required this.Link_text_phone,
    required this.Link_image_email,
    required this.Link_text_email,
    required this.Link_image_check,
    required this.Link_text_check,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.535,
      //color: Colors.green,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    //color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage(Cover_photo), fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        App_par(),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    //color: Colors.pink,
                                    child: Center(
                                      child: Stack(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 50,
                                            color: Colors.orange,
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Get.to(Nativaction_bar());
                                                print("success");
                                              },
                                              icon: Icon(
                                                Icons.arrow_back,
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.38,
                //color: Colors.pink,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.31,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff111111),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height * 0.08,
                                  //color: Colors.pink,
                                ),
                                Text(
                                  "$User_name_account",
                                  style: title,
                                  textAlign: TextAlign.center,
                                ),
                                //Small_space(),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.3,
                                  height:
                                  MediaQuery.of(context).size.height *
                                      0.008,
                                   //color: Colors.pink,
                                ),
                                Text(
                                  "$Nickname",
                                  style: secondary_text,
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.3,
                                  height:
                                  MediaQuery.of(context).size.height *
                                      0.005,
                                  //color: Colors.pink,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                      // color: Colors.pink,
                                      child: Column(
                                        children: [
                                          Center(
                                              child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            //color: Colors.green,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Icon(
                                                    Icons.circle,
                                                    size: 50,
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
                                                    child: Stack(
                                                  children: [
                                                    Center(
                                                        child: Stack(
                                                      children: [
                                                        //Icon(Icons.circle,size: 40,color: Colors.purple,),
                                                        Center(
                                                          child: IconButton(
                                                              onPressed: () {
                                                                print("success");
                                                              },
                                                              icon: Image(
                                                                image: AssetImage(Link_image_phone),
                                                                fit: BoxFit.contain,
                                                              )),
                                                        )
                                                      ],
                                                    )),
                                                  ],
                                                )),
                                              ],
                                            ),
                                          )),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                            //color: Colors.green,
                                          ),
                                          Text(
                                            "$Link_text_phone",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                       //color: Colors.pink,
                                      child: Column(
                                        children: [
                                          Center(
                                              child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            //color: Colors.green,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Icon(
                                                    Icons.circle,
                                                    size: 50,
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
                                                    child: Stack(
                                                  children: [
                                                    //Icon(Icons.circle,size: 40,color: Colors.purple,),
                                                    Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Center(
                                                          child: IconButton(
                                                              onPressed: () {
                                                                print("success");
                                                              },
                                                              icon: Image(
                                                                image: AssetImage(Link_image_email),
                                                                fit: BoxFit.contain,
                                                              )),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )),
                                              ],
                                            ),
                                          )),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                            //color: Colors.green,
                                          ),
                                          Text(
                                            "$Link_text_email",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                      // color: Colors.pink,
                                      child: Column(
                                        children: [
                                          Center(
                                              child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            //color: Colors.green,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Icon(
                                                    Icons.circle,
                                                    size: 50,
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
                                                    child: Stack(
                                                  children: [
                                                    //Icon(Icons.circle,size: 40,color: Colors.purple,),
                                                    Center(
                                                      child: IconButton(
                                                          onPressed: () {
                                                            print("success");
                                                          },
                                                          icon: Image(
                                                            image: AssetImage(Link_image_check),
                                                            fit: BoxFit.contain,
                                                          )),
                                                    )
                                                  ],
                                                )),
                                                /*Center(
                                                    child: Image(
                                                  image: AssetImage(
                                                      Link_image_check),
                                                )),*/
                                              ],
                                            ),
                                          )),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                            //color: Colors.green,
                                          ),
                                          Text(
                                            "$Link_text_check",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  //color: Colors.pink,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.15,
                          //color: Colors.amberAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                //color: Colors.purple,
                                child: Stack(
                                  children: [
                                    Center(
                                        child: Image(
                                      image: AssetImage(User_photo),
                                      fit: BoxFit.contain,
                                    )),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.153,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.07,
                                              //color: Colors.pink,
                                              child: Stack(
                                                children: [],
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
