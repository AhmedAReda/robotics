import 'package:flutter/material.dart';
import 'package:robotics/Constants.dart';

class Events_container extends StatelessWidget {
  final String project_photo;
  final String project_name;
  final String date_of_project;

  //final String photo_2;
  final String clock_of_project;

  //final String photo_3;
  final String location_of_project;

  //final String photo_4;

  const Events_container({
    Key? key,
    required this.project_photo,
    required this.project_name,
    required this.date_of_project,
    required this.clock_of_project,
    required this.location_of_project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow:
            List.filled(2, BoxShadow(color: Colors.orange, blurRadius: 6)),
        color: Colors.black,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(project_photo), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Small_space(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black),
                            child: Center(
                              child: Text(
                                "$project_name",
                                style: title_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Small_space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.04,
                      //color: Colors.purple,
                      child: Image(
                        image: AssetImage("images/60.png"),
                        fit: BoxFit.contain,
                      )),
                  //Icon(Icons.calendar_today_outlined,color: Colors.grey,),
                  Text(
                    "  $date_of_project",
                    style: secondary_text,
                  ),
                ],
              ),
              Small_space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.04,
                      //color: Colors.purple,
                      child: Image(
                        image: AssetImage("images/61.png"),
                        fit: BoxFit.contain,
                      )),
                  //Icon(Icons.calendar_today_outlined,color: Colors.grey,),
                  Text(
                    "  $clock_of_project",
                    style: secondary_text,
                  ),
                ],
              ),
              Small_space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.04,
                      //color: Colors.purple,
                      child: Image(
                        image: AssetImage("images/62.png"),
                        fit: BoxFit.contain,
                      )),
                  //Icon(Icons.calendar_today_outlined,color: Colors.grey,),
                  Text(
                    "  $location_of_project",
                    style: secondary_text,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
