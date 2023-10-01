import 'Events.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import 'package:robotics/View/Best_members.dart';
import '../Controler/Home.dart';
import 'News_Feeds.dart';
import 'Our_projects.dart';
import 'Our_teams.dart';
import 'Profile_user.dart';

class Nativaction_bar extends StatefulWidget {
  @override
  State<Nativaction_bar> createState() => _Nativaction_bar();
}

class _Nativaction_bar extends State<Nativaction_bar> {
  int _current = 0;
  int _currenttap = 0;
  int index = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  Widget _currentscreen = Nativaction_bar();
  final List<Widget> nativactionbar = [
    Home(),
    Events(),
    Our_teams(),
    Profile_user(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: nativactionbar[index],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                boxShadow: List.filled(
                    2, BoxShadow(color: Colors.orange, blurRadius: 3)),
              ),
            ),
            CurvedNavigationBar(
              buttonBackgroundColor: Colors.black,
              height: MediaQuery.of(context).size.height * 0.08,
              backgroundColor: Colors.orange,
              color: Colors.black,
              //animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 450),
              items: <Widget>[
                Icon(
                  Icons.add_home_outlined,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.groups_outlined,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.orange,
                ),
              ],
              index: index,
              letIndexChange: (index) => true,
              onTap: (index) => setState(
                () => this.index = index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> images = [
    'images/23.png',
    'images/25.png',
  ];

  final List<String> places = [
    '23',
    '25',
  ];

  List<Widget> genarateImagesTiles() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            App_par(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              //color: Colors.pink,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          //color: Colors.green,
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.134,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        boxShadow: List.filled(
                                            2,
                                            BoxShadow(
                                                color: Colors.orange,
                                                blurRadius: 6))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.menu,
                                            color: Colors.white,
                                            //size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    backgroundColor: Colors.black,
                                    elevation: 0,
                                    onPressed: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      //color: Colors.blue,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Images(
                                            photo: "images/29.png",
                                          )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                size: 9,
                                                color: Colors.red,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    //color: Colors.green,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.13,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage("images/21.png"),
                                            fit: BoxFit.contain),
                                        boxShadow: List.filled(
                                            2,
                                            BoxShadow(
                                                color: Colors.orange,
                                                blurRadius: 6))),
                                    child: MaterialButton(
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.26,
                        //color: Colors.green,
                        child: Images(
                          photo: "images/1.png",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Hello !  ",
                    style: title_1,
                  ),
                  name_user(text: "Kero"),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.21,
                //color: Colors.pink,
                child: Stack(
                  children: [
                    CarouselSlider(
                        items: genarateImagesTiles(),
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          //aspectRatio: 50/12,
                          height: MediaQuery.of(context).size.height * 0.196,
                        )),
                  ],
                ),
              ),
            ),
            Big_space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(Our_teams());
                    print("success");
                  },
                  child: Home_container(
                    photo: 'images/39.png',
                    text: 'Our Teams',
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.15,
                  //color: Colors.pink,
                ),
                MaterialButton(
                  onPressed: () {
                    Get.to(Our_projects());
                    print("success");
                  },
                  child: Home_container(
                      photo: "images/27.png", text: "Our Projects"),
                ),
              ],
            ),
            Big_space(),
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
                    Get.to(Events());
                    print("success");
                  },
                  child: Home_container(photo: "images/58.png", text: "Events"),
                ),
              ],
            ),
            Big_space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.to(News_Feeds());
                    print("success");
                  },
                  child: Home_container(
                    photo: 'images/57.png',
                    text: 'News Feeds',
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.15,
                  //color: Colors.pink,
                ),
                MaterialButton(
                  onPressed: () {},
                  child:
                      Home_container(photo: "images/28.png", text: "About Us"),
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
