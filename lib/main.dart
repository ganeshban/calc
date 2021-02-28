import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
    debugShowCheckedModeBanner: false,
    title: "Calculater",
  ));
}

class Variable {
  double fontsize = 65;
  double firstData = 0;
  double lastData = 0;
  String operater = "";
  double total = 0;
  String cOrAC = "AC";
  String input = "0";

  void calculation(String data) {
    if (data == "9" ||
        data == "8" ||
        data == "7" ||
        data == "6" ||
        data == "5" ||
        data == "4" ||
        data == "3" ||
        data == "2" ||
        data == "1") {
      Variable().input = Variable().input + data;
    }
    if (data == "O") {
      Variable().input = Variable().input + "0";
    }
    if (data == "OO") {
      Variable().input = Variable().input + "00";
    }
    if (data == ".") {
      print(int.parse(Variable().input));
      if (double.parse(Variable().input) - int.parse(Variable().input) == 0) {
        Variable().input = Variable().input + data;
      }
    }
    if (data == "+") {
      Variable().operater = "+";
    }
    if (data == "-") {
      Variable().operater = "-";
    }
    if (data == "X") {
      Variable().operater = "X";
    }
    if (data == "/") {
      Variable().operater = "/";
    }
    if (data == "AC") {
      Variable().firstData = 0.0;
      Variable().lastData = 0.0;
      Variable().operater = "";
      Variable().total = 0.0;
      Variable().input = "0";
      Variable().cOrAC = "AC";
    }
    if (data == "C") {
      if (Variable().operater != "") {
        Variable().operater = "";
      } else {
        Variable().lastData = 0;
        Variable().cOrAC = "AC";
      }
    }

    if (Variable().operater == "") {
      Variable().total = Variable().firstData;
      Variable().firstData = double.parse(Variable().input + " ");
    } else {
      Variable().total = Variable().lastData;
      Variable().lastData = double.parse(Variable().input + " ");
    }
    Variable().fontsize = 65;
    if (Variable().input.length > 8) {
      Variable().fontsize = 55;
    }
    if (Variable().input.length > 10) {
      Variable().fontsize = 45;
    }
    if (Variable().input.length > 12) {
      Variable().fontsize = 35;
    }
    if (Variable().input.contains(".")) {
      Variable().input = double.parse(Variable().input).toString();
    } else {
      Variable().input = int.parse(Variable().input).toString();
    }
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                // color: Colors.red,
                height: size.height - size.width - 75,
                child: Container(
                  margin: EdgeInsets.only(right: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Variable().input.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Variable().fontsize),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(child: FillData()),
            ],
          ),
        ),
      ),
    );
  }
}

class FillData extends StatefulWidget {
  @override
  _FillDataState createState() => _FillDataState();
}

class _FillDataState extends State<FillData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Particals(
                text: Variable().cOrAC,
                bgcolor: Colors.white70,
                forecolor: Colors.black,
              ),
              Particals(
                text: "+/-",
                bgcolor: Colors.white70,
                forecolor: Colors.black,
              ),
              Particals(
                text: "%",
                bgcolor: Colors.white70,
                forecolor: Colors.black,
              ),
              Particals(
                text: "/",
                bgcolor: Colors.amber.shade900,
                forecolor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Particals(
                text: "7",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "8",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "9",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "X",
                bgcolor: Colors.amber.shade900,
                forecolor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Particals(
                text: "4",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "5",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "6",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "-",
                bgcolor: Colors.amber.shade900,
                forecolor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Particals(
                text: "1",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "2",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "3",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "+",
                bgcolor: Colors.amber.shade900,
                forecolor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Particals(
                text: "O",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "OO",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: ".",
                bgcolor: Colors.grey[900],
                forecolor: Colors.white,
              ),
              Particals(
                text: "=",
                bgcolor: Colors.amber.shade900,
                forecolor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Particals extends StatefulWidget {
  final String text;
  final Color forecolor;
  final Color bgcolor;

  const Particals({Key key, this.text, this.forecolor, this.bgcolor})
      : super(key: key);

  @override
  _ParticalsState createState() => _ParticalsState();
}

class _ParticalsState extends State<Particals> {
  @override
  Widget build(BuildContext context) {
    Size a = MediaQuery.of(context).size;
    double width = a.width;
    return InkWell(
      onTap: () {
        print(widget.text);
        Variable().calculation(widget.text);
        print(Variable().firstData);
        print(Variable().operater);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: width * 20 / 100,
        width: width * 20 / 100,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(color: widget.forecolor, fontSize: 30),
          ),
        ),
        decoration: BoxDecoration(
            color: widget.bgcolor, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
