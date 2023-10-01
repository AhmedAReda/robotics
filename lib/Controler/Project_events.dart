import 'package:flutter/material.dart';

import '../Constants.dart';

class Photo_project_event extends StatelessWidget {
  final String project_photo;

  const Photo_project_event({
    Key? key,
    required this.project_photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8, //* 0.44,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //color: Colors.cyan,
          image: DecorationImage(
              image: AssetImage(project_photo), fit: BoxFit.cover),
        ));
  }
}

class Details_events_container extends StatelessWidget {
  final String date_of_project;
  final String clock_of_project;
  final String location_of_project;

  const Details_events_container({
    Key? key,
    required this.date_of_project,
    required this.clock_of_project,
    required this.location_of_project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}

class Description extends StatelessWidget {
  final String text;

  const Description({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: secondary_text_2,
      textAlign: TextAlign.center,
    );
  }
}

class View_booking extends StatelessWidget {
  final String text;

  const View_booking({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3, //* 0.44,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          onPressed: () {},
          child: Center(
            child: Text(
              "$text",
              style: title_4,
            ),
          ),
        ),
      ),
    );
  }
}
