import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constants.dart';
import 'Login.dart';

class Welcome_2 extends StatefulWidget {
  const Welcome_2({Key? key}) : super(key: key);

  @override
  State<Welcome_2> createState() => _Welcome_2State();
}

class _Welcome_2State extends State<Welcome_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                App_par(),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Images(photo: "images/3.png"),
                ),
                Big_space(),
                Big_space(),
                Main_string_text(text: "Lets Start And Know"),
                Main_string_text(text: "A Lot"),
                Main_string_text(text: "About Us"),
                Big_space(),
                Big_space(),
                Text_description_1(
                  text:
                      "OI ROBOTICS is the first team in obour institutes to be interested in robotics technology",
                ),
                Big_space(),
                Big_space(),
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
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.015,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row_icon(),
                        Row_container(),
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
                      Get.to(Login());
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
