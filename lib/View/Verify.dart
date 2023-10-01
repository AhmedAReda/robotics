import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import 'package:robotics/View/Creat_account.dart';
import 'package:robotics/View/Login.dart';

import '../Controler/Verify.dart';
import 'Successfully_verified.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.4, //* 0.44,
                  height: MediaQuery.of(context).size.height * 0.13,
                  //color: Colors.purple,
                  child: Images(photo: "images/10.png"),
                ),
                Small_space(),
                Big_space(),
                Main_string_text(text: "VERIFY PHONE NUMBER"),
                Small_space(),
                Big_space(),
                Text_description_1(
                  text:
                      'Please check your SMS messages for a verification code to complete the phone number verification process.',
                ),
                /*Second_string_text(
                    text: "Please check your SMS messages for a verification code"),
                Second_string_text(
                    text: "to complete the phone number verification process."),*/
                Small_space(),
                Big_space(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text_form_field_number_1(),
                          Text_form_field_number_1(),
                          Text_form_field_number_1(),
                          Text_form_field_number_1(),
                          Text_form_field_number_1(),
                        ],
                      ),
                    ),
                  ),
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
                      Get.to(Successfully_verified());
                      print("success");
                    },
                    child: Main_button(text: "VERIFY"),
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
