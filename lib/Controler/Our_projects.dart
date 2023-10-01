import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../Constants.dart';

class Text_form_field_string_in_projects extends StatelessWidget {
  final String text;
  final Icon icon;

  const Text_form_field_string_in_projects(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.057,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: title_4,
          toolbarOptions: ToolbarOptions(
              selectAll: true, copy: true, cut: true, paste: true),
          enabled: true,
          focusNode: FocusNode(canRequestFocus: true),
          cursorColor: Colors.grey,
          cursorHeight: 20,
          cursorWidth: 3,
          decoration: InputDecoration(
              enabled: true,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 0.0000000000000000000001,
                  color: Colors.white,
                ),
              ),
              focusColor: Colors.white,
              prefixIcon: icon,
              hintText: (text),
              hintStyle: TextStyle(color: Colors.grey)
          ),
        ),
      ),
    );
  }
}

class Project_container extends StatelessWidget {
  final String project_photo;

  final String project_name;

  final String date_of_project;

  const Project_container({
    Key? key,
    required this.project_photo,
    required this.project_name,
    required this.date_of_project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22), color: Color(0xff111111)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomLeft: Radius.circular(22)),
                  image: DecorationImage(
                      image: AssetImage(project_photo), fit: BoxFit.fill)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.05,
              height: MediaQuery.of(context).size.height * 0.15,
              //color: Colors.orange,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.44,
              height: MediaQuery.of(context).size.height,
              //color: Colors.orange,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$project_name",
                        style: secondary_text_2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.02,
                        height: MediaQuery.of(context).size.height * 0.01,
                        //color: Colors.orange,
                      ),
                      Text(
                        "$date_of_project",
                        style: secondary_text,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.031,
                            //color: Colors.green,
                            child: LikeButton(
                              size: 25,
                              circleColor: CircleColor(
                                  start: Colors.orange, end: Colors.orange),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Colors.orange,
                                dotSecondaryColor: Colors.black,
                              ),
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  Icons.favorite,
                                  color: isLiked ? Colors.orange : Colors.grey,
                                  size: 20,
                                );
                              },
                              countPostion: CountPostion.left,
                              likeCount: 14,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.02,
                        height: MediaQuery.of(context).size.height * 0.01,
                        //color: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
