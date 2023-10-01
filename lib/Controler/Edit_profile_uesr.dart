import 'package:flutter/material.dart';
import '../Constants.dart';
import 'Creat_account.dart';
import 'Login.dart';
import 'Profile_user.dart';

class editprofile extends StatelessWidget {
  final String Cover_photo_edit;
  final String Main_photo_edit;

  const editprofile(
      {super.key,
      required this.Cover_photo_edit,
      required this.Main_photo_edit});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                Link_text_phone: 'Phone',
                Link_image_email: 'images/49.png',
                Link_text_email: 'Email',
                Link_image_check: 'images/50.png',
                Link_text_check: 'Check This',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color(0xff090909B2),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.158,
                    //color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.825,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff111111),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.225,
                                    color: Color(0xff111111),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10),
                                              ),
                                              // color: Colors.green,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      Cover_photo_edit),
                                                  fit: BoxFit.fill)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              //color: Colors.amberAccent,
                                              child: Center(
                                                  child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                                //color: Colors.green,
                                                child: Stack(
                                                  children: [
                                                    Center(
                                                        child: Image(
                                                      image: AssetImage(
                                                          Main_photo_edit),
                                                      fit: BoxFit.contain,
                                                    )),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
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
                                padding: const EdgeInsets.only(left: 5),
                                child: text_in_form_field(
                                  text: 'NAME',
                                ),
                              ),
                              Small_space(),
                              Text_form_field_string(
                                  text: "Your Name",
                                  icon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white38,
                                    size: 25,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: text_in_form_field(
                                  text: 'EMAIL',
                                ),
                              ),
                              Small_space(),
                              Text_form_field_string(
                                  text: "Your Email",
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white38,
                                    size: 25,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: text_in_form_field(
                                  text: 'PHONE',
                                ),
                              ),
                              Small_space(),
                              Text_form_field_number(
                                  text: "Your Phone",
                                  icon: Icon(
                                    Icons.phone_outlined,
                                    color: Colors.white38,
                                    size: 25,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: text_in_form_field(
                                  text: 'Link',
                                ),
                              ),
                              Small_space(),
                              Text_form_field_string(
                                  text: "Your Link",
                                  icon: Icon(
                                    Icons.phone_outlined,
                                    color: Colors.white38,
                                    size: 25,
                                  )),
                              Small_space(),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.001,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.03,
            //color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
