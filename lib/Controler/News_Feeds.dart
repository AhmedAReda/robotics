import 'package:flutter/material.dart';
import '../Constants.dart';

class News_feeds_container_1 extends StatelessWidget {
  final String team_photo;
  final String event_name;
  final String new_feeds;

  const News_feeds_container_1({
    Key? key,
    required this.team_photo,
    required this.event_name,
    required this.new_feeds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width, //* 0.44,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          boxShadow:
              List.filled(2, BoxShadow(color: Colors.orange, blurRadius: 6)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2, //* 0.44,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Image(
                      image: AssetImage(team_photo),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "$event_name",
                    style: title,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                "$new_feeds",
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class News_feeds_container_2 extends StatelessWidget {
  final String team_photo;
  final String event_name;
  final String new_feeds;
  final String project_photo;

  const News_feeds_container_2({
    Key? key,
    required this.team_photo,
    required this.event_name,
    required this.new_feeds,
    required this.project_photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width, //* 0.44,
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          boxShadow:
              List.filled(2, BoxShadow(color: Colors.orange, blurRadius: 6)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2, //* 0.44,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Image(
                      image: AssetImage(team_photo),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "$event_name",
                    style: title,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                "$new_feeds",
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7, //* 0.44,
                height: MediaQuery.of(context).size.height * 0.21,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(project_photo), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  boxShadow: List.filled(
                      2, BoxShadow(color: Colors.orange, blurRadius: 6)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
