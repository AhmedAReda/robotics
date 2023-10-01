import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';

class text_in_form_field extends StatelessWidget {
  final String text;

  const text_in_form_field({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Text(
            text,
            style: title,
          ),
        ],
      ),
    );
  }
}

class Text_form_field_string extends StatelessWidget {
  final String text;
  final Icon icon;

  const Text_form_field_string(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,
        //color: Colors.orange,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: secondary_text,
          toolbarOptions: ToolbarOptions(
              selectAll: true, copy: true, cut: true, paste: true),
          enabled: true,
          focusNode: FocusNode(canRequestFocus: true),
          cursorColor: Colors.white,
          cursorHeight: 20,
          cursorWidth: 3,
          decoration: InputDecoration(
              enabled: true,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xfff7901e),
                  /*strokeAlign: StrokeAlign.inside,
                  width: 2,*/
                ),
              ),
              focusColor: Color(0xfff7901e),
              prefixIcon: icon,
              hintText: (text),
              hintStyle: TextStyle(color: Colors.white38)),
        ),
      ),
    );
  }
}
