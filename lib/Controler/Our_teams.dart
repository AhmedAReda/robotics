import 'package:flutter/material.dart';
import 'package:robotics/Constants.dart';

class Member_container extends StatelessWidget {
  final String text;

  const Member_container({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.orange,
      ),
      child: Center(
          child: Text(
        "$text",
        style: title_2,
      )),
    );
  }
}

class Member_hardware extends StatelessWidget {
  final String member_jop;

  final String member_name;

  final String member_photo;

  const Member_hardware({
    Key? key,
    required this.member_jop,
    required this.member_name,
    required this.member_photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          //color: Color(0xff111111),
          borderRadius: BorderRadius.circular(11)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: Color(0xff111111),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: List.filled(
                      2, BoxShadow(color: Colors.orange, blurRadius: 3.5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.01,
                    //color: Colors.purple,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$member_name",
                        style: main_text,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.009,
                //color: Colors.pink,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange),
                    child: Center(
                        child: Text(
                      "$member_jop",
                      style: title_2,
                    )),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.002,
                    height: MediaQuery.of(context).size.height * 0.01,
                    //color: Colors.pink,
                  ),
                  Image(
                    image: AssetImage(member_photo),
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width * 0.185,
                    height: MediaQuery.of(context).size.height * 0.1,
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
