import 'dart:ui';

import 'package:calculatorbutton/next.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  TextEditingController firstcontrol = TextEditingController();
  TextEditingController secondcontrol = TextEditingController();
  String ans = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: firstcontrol,
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Enter First Value",
                labelText: "First Value",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: secondcontrol,
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Enter Second Value",
                labelText: "Second Value",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        String a1 = firstcontrol.text;
                        String a2 = secondcontrol.text;
                        double a = 0;
                        double b = 0;
                        if (a1.trim().isNotEmpty) {
                          a = double.parse(a1);
                        }
                        if (a2.trim().isNotEmpty) {
                          b = double.parse(a2);
                        }
                        double c = a + b;

                        ans = c.toString();
                        setState(() {});
                      },
                      child: Text("+ Plus")
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        String a1 = firstcontrol.text;
                        String a2 = secondcontrol.text;
                        double a = 0;
                        double b = 0;
                        if (a1.trim().isNotEmpty) {
                          a = double.parse(a1);
                        }
                        if (a2.trim().isNotEmpty) {
                          b = double.parse(a2);
                        }
                        double c = a - b;

                        ans = c.toString();
                        setState(() {});
                      },
                      child: Text("- Minus")),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          String a1 = firstcontrol.text;
                          String a2 = secondcontrol.text;
                          double a = 0;
                          double b = 0;
                          if (a1.trim().isNotEmpty) {
                            a = double.parse(a1);
                          }
                          if (a2.trim().isNotEmpty) {
                            b = double.parse(a2);
                          }
                          double c = a * b;

                          ans = c.toString();
                          setState(() {});
                        },
                        child: Text("x Multi")
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          String a1 = firstcontrol.text;
                          String a2 = secondcontrol.text;
                          double a = 0;
                          double b = 0;
                          if (a1.trim().isNotEmpty) {
                            a = double.parse(a1);
                          }
                          if (a2.trim().isNotEmpty) {
                            b = double.parse(a2);
                          }
                          double c = a / b;

                          ans = c.toString();
                          setState(() {});
                        },
                        child: Text("/ Div")),
                  ),
                ],
              ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff0794fa),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 7,
                    blurStyle: BlurStyle.normal,
                    color: Colors.black.withOpacity(0.4))
              ],
            ),
            child: Text(
              "Answer :  $ans",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return anadh();
            },));
          }, child: Text("Go to Next Page"))
        ],
      ),
    );
  }
}
