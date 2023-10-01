import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Constants.dart';
import '../Controler/Project_events.dart';
import 'Welcome_2.dart';

class Welcome_1 extends StatefulWidget {
  const Welcome_1({Key? key}) : super(key: key);

  @override
  State<Welcome_1> createState() => _Welcome_1State();
}

class _Welcome_1State extends State<Welcome_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                App_par(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.18,
                  //color: Colors.pink,
                  child: Images(photo: "images/5.png"),
                ),
                Big_space(),
                Main_string_text(text: "Welcome To"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OI",
                      style: main_text,
                    ),
                    Text(" - ",
                        style: TextStyle(fontSize: 22, color: Colors.orange)),
                    Text(
                      "ROBOTICS",
                      style: main_text,
                    ),
                  ],
                ),
                Big_space(),
                Big_space(),
                Big_space(),
                Text_description_1(
                  text:
                      'OI ROBOTICS is the first team in obour institutes to be interested in robotics technology',
                ),
                Big_space(),
                Big_space(),
                Small_space(),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.92,
              //color: Colors.white24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    //color: Colors.pink,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.015,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row_container(),
                        Row_icon(),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.025,
                    //color: Colors.pink,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Get.to(Welcome_2());
                      print("sucess");
                    },
                    child: Main_button(text: "NEXT"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
