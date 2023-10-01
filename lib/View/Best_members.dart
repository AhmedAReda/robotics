import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import '../Controler/Best_members.dart';
import '../Controler/Our_teams.dart';
import 'Home.dart';

class Best_members extends StatefulWidget {
  const Best_members({Key? key}) : super(key: key);

  @override
  State<Best_members> createState() => _Best_membersState();
}

class _Best_membersState extends State<Best_members> {
  bool _connect = false;
  int _like = 0;
  int count = 0;
  bool isLiked = false;

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
              child: Image_home_container(photo: "images/26.png"),
            ),
            Small_space(),
            Text(
              "Best Members",
              style: main_text,
            ),
            Small_space(),
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
            Small_space(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Best_member_container(
                        cover_photo: "images/32.png",
                        main_photo: "images/31.png",
                        member_name: "ABD EL-FATAH EL-SISI",
                        member_jop: "President Of Egypt",
                        member_mood: "Best Member",
                        date_of_mood: "May,2023"),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Best_member_container(
                        cover_photo: "images/32.png",
                        main_photo: "images/31.png",
                        member_name: "ABD EL-FATAH EL-SISI",
                        member_jop: "President Of Egypt",
                        member_mood: "Best Member",
                        date_of_mood: "May,2023"),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Best_member_container(
                        cover_photo: "images/32.png",
                        main_photo: "images/31.png",
                        member_name: "ABD EL-FATAH EL-SISI",
                        member_jop: "President Of Egypt",
                        member_mood: "Best Member",
                        date_of_mood: "May,2023"),
                  ),
                ],
              ),
            ),
            Small_space(),
          ],
        ),
      ),
    );
  }
}
