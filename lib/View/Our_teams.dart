import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import '../Controler/Our_teams.dart';
import 'Home.dart';

class Our_teams extends StatefulWidget {
  const Our_teams({Key? key}) : super(key: key);

  @override
  State<Our_teams> createState() => _Our_teamsState();
}

class _Our_teamsState extends State<Our_teams> {
  final int _currentttap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            App_par(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width, //* 0.44,
                height: MediaQuery.of(context).size.height * 0.16,
                //color: Colors.pink,
                child: Stack(
                  children: [
                    Images(photo: "images/1.png"),
                    Row(
                      children: [
                        FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.black,
                            onPressed: () {
                              Get.to(Nativaction_bar());
                              print("success");
                            },
                            child: Reverse_icon()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Small_space(),
            Container(
              width: MediaQuery.of(context).size.width, //* 0.44,
              height: MediaQuery.of(context).size.height * 0.12,
              //color: Colors.pink,
              child: Images(photo: "images/39.png"),
            ),
            Small_space(),
            Text(
              "Our Teams",
              style: main_text,
            ),
            Small_space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OI",
                  style: secondary_text_1,
                ),
                Text(" - ",
                    style: TextStyle(fontSize: 22, color: Colors.orange)),
                Text(
                  "Robotics Where metal",
                  style: secondary_text_1,
                ),
              ],
            ),
            Main_string_text_1(text: "meets intelligence."),
            Big_space(),
            Container(
              width: MediaQuery.of(context).size.width, //* 0.44,
              height: MediaQuery.of(context).size.height * 0.0015,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: List.filled(
                      2, BoxShadow(blurRadius: 2, color: Colors.orange))),
            ),
            Small_space(),
            Container(
              width: MediaQuery.of(context).size.width, //* 0.44,
              height: MediaQuery.of(context).size.height * 0.045,
              //color: Colors.pink,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      /*color: _currentttap == 0?Colors.purple:Colors.green,*/
                      child: Member_container(
                        text: "  ALL  ",
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Member_container(
                        text: "  Hardware  ",
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Member_container(
                        text: "  Software  ",
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Member_container(
                        text: "  Media  ",
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Member_container(
                        text: "    Pr    ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Big_space(),
            MaterialButton(
              onPressed: () {},
              child: Member_hardware(
                member_jop: 'Hardware Head',
                member_name: 'Ahmed Reda',
                member_photo: 'images/45.png',
              ),
            ),
            Small_space(),
            MaterialButton(
              onPressed: () {},
              child: Member_hardware(
                member_jop: 'Hardware Member',
                member_name: 'Ahmed Reda',
                member_photo: 'images/45.png',
              ),
            ),
            Small_space(),
            MaterialButton(
              onPressed: () {},
              child: Member_hardware(
                member_jop: 'Hardware Member',
                member_name: 'Ahmed Reda',
                member_photo: 'images/45.png',
              ),
            ),
            Small_space(),
          ],
        ),
      ),
    );
  }
}
