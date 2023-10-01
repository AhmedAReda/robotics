import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:robotics/Constants.dart';
import '../Controler/Project_events.dart';
import 'Events.dart';

class Project_events extends StatefulWidget {
  const Project_events({Key? key}) : super(key: key);

  @override
  State<Project_events> createState() => _Project_eventsState();
}

class _Project_eventsState extends State<Project_events> {
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
                              Get.to(Events());
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
            Photo_project_event(
              project_photo: "images/59.png",
            ),
            Small_space(),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: Row(
                children: [
                  Text(
                    "Details:",
                    style: title_1,
                  ),
                ],
              ),
            ),
            Small_space(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width, //* 0.44,
                height: MediaQuery.of(context).size.height * 0.165,
                //color: Colors.pink,
                child: Stack(
                  children: [
                    Details_events_container(
                      date_of_project: '12-09-2022',
                      clock_of_project: 'Sun, 12:30 – 11:00 pm',
                      location_of_project: 'Obour, Cairo',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        View_booking(text: "Bookings"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Small_space(),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: Row(
                children: [
                  Text(
                    "Description::",
                    style: title_1,
                  ),
                ],
              ),
            ),
            Small_space(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Description(
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.Lorem Ipsum is simply dummy text of the printing & typesetting industry.',
                  ),
                ),
              ],
            ),
            Big_space(),
          ],
        ),
      ),
    );
  }
}
