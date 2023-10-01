import 'package:flutter/material.dart';
import 'package:robotics/Constants.dart';

class Home_container extends StatelessWidget {
  final String photo;

  final String text;

  const Home_container({Key? key, required this.photo, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        boxShadow:
            List.filled(2, BoxShadow(color: Colors.orange, blurRadius: 6)),
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.11,
              //color: Colors.pink,
              child: Image(
                color: Colors.orange,
                image: AssetImage(photo),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.22,
              height: MediaQuery.of(context).size.height * 0.01,
              //color: Colors.pink,
            ),
            Text(
              "$text",
              style: title,
            ),
          ],
        ),
      ),
    );
  }
}

class name_user extends StatelessWidget {
  final String text;
  const name_user({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: title,
    );
  }
}

