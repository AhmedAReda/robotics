import 'package:flutter/material.dart';

class Text_form_field_number_1 extends StatelessWidget {
  const Text_form_field_number_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
            color: Color(0xff272727), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: 15, color: Colors.white38, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
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
                  color: Colors.orange,
                  /*strokeAlign: StrokeAlign.inside,
                  width: 2,*/
                ),
              ),
              focusColor: Colors.orange,
              hintStyle: TextStyle(color: Colors.white38)),
        ),
      ),
    );
  }
}
