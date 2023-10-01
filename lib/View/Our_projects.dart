import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';

import '../Controler/Best_members.dart';

import '../Controler/Our_projects.dart';
import '../Controler/Our_teams.dart';
import 'Home.dart';

class Our_projects extends StatefulWidget {
  const Our_projects({Key? key}) : super(key: key);

  @override
  State<Our_projects> createState() => _Our_projectsState();
}

class _Our_projectsState extends State<Our_projects> {
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
              child: Image_home_container(photo: "images/27.png"),
            ),
            Small_space(),
            Text(
              "Explore Our Projects",
              style: main_text,
            ),
            Big_space(),
            Text_form_field_string_in_projects(
              text: ' Search',
              icon: Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
            ),
            Big_space(),
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
                        text: "  Latest  ",
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Member_container(
                        text: "   AI   ",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Big_space(),
            MaterialButton(
              onPressed: () {},
              child: Project_container(
                project_photo: 'images/38.png',
                project_name: 'Wall-E Small Version',
                date_of_project: 'May,2023',
              ),
            ),
            Small_space(),
            MaterialButton(
              onPressed: () {},
              child: Project_container(
                project_photo: 'images/38.png',
                project_name: 'Wall-E Small Version',
                date_of_project: 'May,2023',
              ),
            ),
            Small_space(),
            MaterialButton(
              onPressed: () {},
              child: Project_container(
                project_photo: 'images/38.png',
                project_name: 'Wall-E Small Version',
                date_of_project: 'May,2023',
              ),
            ),
            Small_space(),
          ],
        ),
      ),
    );
  }
}
