import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Constants.dart';
import '../Controler/Creat_account.dart';
import '../Controler/Login.dart';
import 'Login.dart';
import 'Verify.dart';

class Creat_account extends StatefulWidget {
  const Creat_account({Key? key}) : super(key: key);

  @override
  State<Creat_account> createState() => _Creat_accountState();
}

class _Creat_accountState extends State<Creat_account> {
  bool _icons = true;

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
                height: MediaQuery.of(context).size.height * 0.14,
                //color: Colors.pink,
                child: Stack(
                  children: [
                    Images(photo: "images/7.png"),
                    Row(
                      children: [
                        FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.black,
                            onPressed: () {
                              Get.to(Login());
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
                  "Robotics Where metal",
                  style: main_text,
                ),
              ],
            ),
            Main_string_text(text: "meets intelligence."),
            Big_space(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      color: Color(0xff111111)),
                  child: Column(
                    children: [
                      Big_space(),
                      Text(
                        "Creat Account",
                        style: title,
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
                          text: "your name",
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
                          text: "your email",
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
                          text: "your phone",
                          icon: Icon(
                            Icons.phone_outlined,
                            color: Colors.white38,
                            size: 25,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: text_in_form_field(
                          text: 'PASSWORD',
                        ),
                      ),
                      Small_space(),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.08,
                          //color: Colors.orange,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: _icons,
                            style: secondary_text,
                            toolbarOptions: ToolbarOptions(
                                selectAll: true,
                                copy: true,
                                cut: true,
                                paste: true),
                            enabled: true,
                            focusNode: FocusNode(canRequestFocus: true),
                            //autofocus: true,
                            cursorColor: Colors.white,
                            cursorHeight: 20,
                            cursorWidth: 3,
                            decoration: InputDecoration(
                                //isDense: false,
                                enabled: true,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xfff7901e),
                                    /*strokeAlign: StrokeAlign.inside,
                  width: 2,*/
                                  ),
                                ),
                                focusColor: Color(0xfff7901e),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white38,
                                  size: 25,
                                ),
                                filled: true,
                                suffix: Container(
                                  margin: EdgeInsets.only(),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _icons = !_icons;
                                      });
                                    },
                                    icon: _icons
                                        ? Icon(
                                            Icons.visibility_off_outlined,
                                            size: 25,
                                            color: Colors.white,
                                          )
                                        : Icon(
                                            Icons.visibility_outlined,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                  ),
                                ),
                                hintText: ("Password"),
                                hintStyle: TextStyle(color: Colors.white38)),
                          ),
                        ),
                      ),
                      Small_space(),
                      Padding(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.orange),
                              child: MaterialButton(
                                onPressed: () {
                                  Get.to(Verify());
                                  print("success");
                                },
                                child: Text("Sign Up",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.07,
                              height: MediaQuery.of(context).size.height * 0.06,
                              //color: Colors.orange,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              decoration: BoxDecoration(
                                  boxShadow: List.filled(
                                    3,
                                    BoxShadow(
                                        blurRadius: 2.5, color: Colors.orange),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black),
                              child: MaterialButton(
                                onPressed: () {
                                  Get.to(Login());
                                  print("success");
                                },
                                child: Text("Sign In",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
