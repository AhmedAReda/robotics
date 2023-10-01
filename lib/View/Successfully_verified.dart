import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import 'package:robotics/View/Forget_password.dart';
import 'package:robotics/View/Login.dart';

class Successfully_verified extends StatefulWidget {
  const Successfully_verified({Key? key}) : super(key: key);

  @override
  State<Successfully_verified> createState() => _Successfully_verifiedState();
}

class _Successfully_verifiedState extends State<Successfully_verified> {
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
                  width: MediaQuery.of(context).size.width, //* 0.44,
                  height: MediaQuery.of(context).size.height * 0.182,
                  //color: Colors.pink,
                  child: Images(photo: "images/1.png"),
                ),
                Big_space(),
                Container(
                  width: MediaQuery.of(context).size.width, //* 0.44,
                  height: MediaQuery.of(context).size.height * 0.17,
                  //color: Colors.pink,
                  child: Images(photo: "images/9.png"),
                ),
                Small_space(),
                Big_space(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Successfully Verified ",
                      style: main_text,
                    ),
                    Text(
                      "!",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Small_space(),
                Big_space(),
                Text_description_1(
                  text:
                      "Your phone number has been confirmed and is now officially verified",
                ),
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
                  MaterialButton(
                    onPressed: () {
                      Get.to(Login());
                      print("success");
                    },
                    child: Main_button(text: "Thanks !"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
