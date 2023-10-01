import 'package:flutter/material.dart';

const main_text =
    TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);

const title =
    TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);

const secondary_text_2 =
    TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold);

const secondary_text =
    TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold);

const secondary_text_1 =
    TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold);

const secondary_text_3 =
    TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold);

const title_1 =
    TextStyle(fontSize: 17, color: Colors.orange, fontWeight: FontWeight.bold);

const title_3 =
    TextStyle(fontSize: 14, color: Colors.orange, fontWeight: FontWeight.bold);

const title_2 =
    TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold);

const title_4 =
    TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold);

class Text_description_1 extends StatelessWidget {
  final String text;

  const Text_description_1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Text(
        "$text",
        style: secondary_text_3,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Text_description_2 extends StatelessWidget {
  final String text;

  const Text_description_2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Text(
        "$text",
        style: title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class App_par extends StatefulWidget {
  const App_par({Key? key}) : super(key: key);

  @override
  State<App_par> createState() => _App_parState();
}

class _App_parState extends State<App_par> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65)),
            color: Colors.orange,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          //color: Colors.pink,
        ),
      ],
    );
  }
}

class Big_space extends StatefulWidget {
  const Big_space({Key? key}) : super(key: key);

  @override
  State<Big_space> createState() => _Big_spaceState();
}

class _Big_spaceState extends State<Big_space> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.pink,
    );
  }
}

class Small_space extends StatefulWidget {
  const Small_space({Key? key}) : super(key: key);

  @override
  State<Small_space> createState() => _Small_spaceState();
}

class _Small_spaceState extends State<Small_space> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.02,
      //color: Colors.pink,
    );
  }
}

class Images extends StatelessWidget {
  final String photo;

  const Images({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, //* 0.44,
      height: MediaQuery.of(context).size.height * 0.24,
      //color: Colors.pink,
      child: Image(
        image: AssetImage(photo),
        fit: BoxFit.contain,
      ),
    );
  }
}

class Main_button extends StatelessWidget {
  final String text;

  const Main_button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.055,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffF7901E)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Reverse_icon extends StatelessWidget {
  const Reverse_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, //* 0.44,
      height: MediaQuery.of(context).size.height * 0.1,
      //color: Colors.purple,
      child: Stack(
        children: [
          Center(
              child: Stack(
            children: [
              Center(
                  child: Icon(
                Icons.circle,
                color: Colors.orange,
                size: 50,
              )),
              Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Main_string_text extends StatelessWidget {
  final String text;

  const Main_string_text({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.pink,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$text",
              style: main_text,
            ),
          ],
        ),
      ),
    );
  }
}

class Main_string_text_1 extends StatelessWidget {
  final String text;

  const Main_string_text_1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.pink,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$text",
              style: secondary_text_1,
            ),
          ],
        ),
      ),
    );
  }
}

class Second_string_text extends StatelessWidget {
  final String text;

  const Second_string_text({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.pink,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$text",
              style: secondary_text,
            ),
          ],
        ),
      ),
    );
  }
}

class Row_container extends StatelessWidget {
  const Row_container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.015,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.orange),
    );
  }
}

class Row_icon extends StatelessWidget {
  const Row_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xffF0F0F0)),
      child: Icon(
        Icons.circle,
        color: Color(0xffF0F0F0),
        size: 13,
      ),
    );
  }
}

/*Center(
                                                      child: Icon(
                                                        Icons.circle,
                                                        size: 36,
                                                        color: Color(0xff111111),
                                                        shadows: [
                                                          Shadow(
                                                              blurRadius: 4,
                                                              color:
                                                              Colors.white),
                                                          BoxShadow(
                                                            color: Colors.white,
                                                            blurRadius: 5,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Center(
                                                      child: IconButton(
                                                        onPressed: () {
                                                          print("success");
                                                        },
                                                        icon: Icon(
                                                          Icons.camera_alt_outlined,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),*/
