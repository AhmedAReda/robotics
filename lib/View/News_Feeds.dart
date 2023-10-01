import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import '../Controler/Best_members.dart';
import '../Controler/News_Feeds.dart';
import 'Home.dart';

class News_Feeds extends StatefulWidget {
  const News_Feeds({Key? key}) : super(key: key);

  @override
  State<News_Feeds> createState() => _News_FeedsState();
}

class _News_FeedsState extends State<News_Feeds> {
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
              child: Image_home_container(photo: "images/57.png"),
            ),
            Small_space(),
            Text(
              "News Feed",
              style: main_text,
            ),
            Big_space(),
            Container(
              width: MediaQuery.of(context).size.width, //* 0.44,
              height: MediaQuery.of(context).size.height * 0.0015,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: List.filled(
                      2, BoxShadow(blurRadius: 2, color: Colors.orange))),
            ),
            Big_space(),
            MaterialButton(
              onPressed: () {},
              child: News_feeds_container_1(
                team_photo: 'images/63.png',
                event_name: 'Robotics',
                new_feeds:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
              ),
            ),
            Big_space(),
            MaterialButton(
              onPressed: () {},
              child: News_feeds_container_2(
                team_photo: 'images/63.png',
                event_name: 'Robotics',
                new_feeds:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                project_photo: 'images/64.png',
              ),
            ),
            Big_space(),
          ],
        ),
      ),
    );
  }
}
