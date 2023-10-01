import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';

import '../Controler/Best_members.dart';
import '../Controler/Events.dart';
import '../Controler/Our_projects.dart';
import 'Home.dart';
import 'Project_events.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
              child: Image_home_container(photo: "images/58.png"),
            ),
            Small_space(),
            Text(
              "Events",
              style: main_text,
            ),
            Big_space(),
            Text_form_field_string_in_projects(
              text: ' Search events',
              icon: Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
            ),
            Small_space(),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: title_1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.42,
              //color: Colors.pink,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Get.to(Project_events());
                          print("success");
                        },
                        child: Events_container(
                          project_photo: 'images/59.png',
                          project_name: 'Event name',
                          date_of_project: '12-09-2023',
                          clock_of_project: 'Sun, 12:30 – 11:00 pm',
                          location_of_project: 'Obour, Cairo',
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Events_container(
                          project_photo: 'images/59.png',
                          project_name: 'Event name',
                          date_of_project: '12-09-2023',
                          clock_of_project: 'Sun, 12:30 – 11:00 pm',
                          location_of_project: 'Obour, Cairo',
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Events_container(
                          project_photo: 'images/59.png',
                          project_name: 'Event name',
                          date_of_project: '12-09-2023',
                          clock_of_project: 'Sun, 12:30 – 11:00 pm',
                          location_of_project: 'Obour, Cairo',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Big_space(),
          ],
        ),
      ),
    );
  }
}
