import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../Constants.dart';

class Image_home_container extends StatelessWidget {
  final String photo;

  const Image_home_container({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      color: Colors.orange,
      image: AssetImage(photo),
      fit: BoxFit.contain,
    );
  }
}

class Best_member_container extends StatelessWidget {
  final String cover_photo;

  final String main_photo;

  final String member_name;

  final String member_jop;

  final String member_mood;

  final String date_of_mood;

  const Best_member_container({
    Key? key, required this.cover_photo, required this.main_photo, required this.member_name, required this.member_jop, required this.member_mood, required this.date_of_mood,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.45,
      //color: Colors.pink,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), /*color: Colors.green*/
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff090909)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(cover_photo), fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.03,
                            //color: Colors.pink,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              //color: Colors.pink,
                              image: DecorationImage(
                                  image: AssetImage(main_photo),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.015,
                            //color: Colors.pink,
                          ),
                          Text(
                            "$member_name",
                            style: secondary_text_2,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.005,
                            //color: Colors.pink,
                          ),
                          Text(
                            "$member_jop",
                            style: title_3,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.005,
                            //color: Colors.pink,
                          ),
                          Text(
                            "$member_mood",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white24,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.005,
                            //color: Colors.pink,
                          ),
                          Text(
                            "$date_of_mood",
                            style: secondary_text,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.005,
                            //color: Colors.pink,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.01,
                            //color: Colors.pink,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.07,
                            //color: Colors.pink,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    height: MediaQuery.of(context).size.height *
                                        0.045,
                                    decoration: BoxDecoration(
                                        boxShadow: List.filled(
                                          3,
                                          BoxShadow(
                                              blurRadius: 2.5,
                                              color: Colors.orange),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black),
                                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange,),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage("images/33.png"),
                                          fit: BoxFit.contain,
                                          color: Colors.orange,
                                          width: 20,
                                          height: 20,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.005,

                                          //color: Colors.pink,
                                        ),
                                        Text(
                                          "Connect",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                //Text("$_like",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),

                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                  //color: Colors.pink,
                                ),

                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.17,
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  //color: Colors.green,
                                  child: LikeButton(
                                    size: 25,
                                    circleColor: CircleColor(
                                        start: Colors.orange,
                                        end: Colors.orange),
                                    bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.orange,
                                      dotSecondaryColor: Colors.black,
                                    ),
                                    likeBuilder: (bool isLiked) {
                                      return Image(
                                        image: AssetImage("images/30.png"),
                                        color: isLiked
                                            ? Colors.orange
                                            : Colors.white,
                                      ); /*Icon(
                                                        Icons.home,
                                                        color: isLiked ? Colors.orange : Colors.grey,
                                                        size: 20,
                                                      );*/
                                    },
                                    countPostion: CountPostion.left,
                                    likeCount: 12,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                  ),
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
            ],
          )),
    );
  }
}
