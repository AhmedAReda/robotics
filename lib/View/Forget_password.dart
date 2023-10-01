import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import 'package:robotics/View/Login.dart';
import 'package:robotics/View/Successfully_verified.dart';

import '../Controler/Login.dart';
import 'Creat_account.dart';

class Forget_password extends StatefulWidget {
  const Forget_password({Key? key}) : super(key: key);

  @override
  State<Forget_password> createState() => _Forget_passwordState();
}

class _Forget_passwordState extends State<Forget_password> {
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
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width, //* 0.44,
                    height: MediaQuery.of(context).size.height * 0.168,
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
                                  Get.to(Creat_account());
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
                  width: MediaQuery.of(context).size.width * 0.4, //* 0.44,
                  height: MediaQuery.of(context).size.height * 0.15,
                  //color: Colors.purple,
                  child: Images(photo: "images/8.png"),
                ),
                Big_space(),
                Main_string_text(text: "FORGET PASSWORD"),
                Big_space(),
                Text_description_1(
                  text:
                      'Provide your account’s email to recieve your old password',
                ),
                Big_space(),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: text_in_form_field(
                    text: 'EMAIL',
                  ),
                ),
                Small_space(),
                Text_form_field_string(
                    text: "your email",
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.white38,
                      size: 25,
                    )),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.88,
              //color: Colors.white24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Get.to(Login());
                      print("success");
                    },
                    child: Main_button(text: "Send"),
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
