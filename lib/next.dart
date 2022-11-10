import 'package:flutter/material.dart';

class anadh extends StatefulWidget {
  @override
  State<anadh> createState() => _anadhState();
}

class _anadhState extends State<anadh> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  String sign = "";
  String ans = "0.0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator using Radio button"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: t1,
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
              controller: t2,
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Enter Second Value",
                labelText: "Second Value",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            value: "+ Plus",
            groupValue: sign,
            title: Text("+ Plus"),
            onChanged: (value) {
              sign = value.toString();
              print(value);
              setState(() {});
            },
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            value: "- Minus",
            groupValue: sign,
            title: Text("- Minus"),
            onChanged: (value) {
              sign = value.toString();
              print(value);
              setState(() {});
            },
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            value: "x Multi",
            groupValue: sign,
            title: Text("x Multiplication"),
            onChanged: (value) {
              sign = value.toString();
              print(value);
              setState(() {});
            },
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            value: "/ Div",
            groupValue: sign,
            title: Text("/ Division"),
            onChanged: (value) {
              sign = value.toString();
              print(value);
              setState(() {});
            },
          ),
          ElevatedButton(onPressed: () {
            if(sign == "+ Plus")
              {
                String a1 = t1.text;
                String a2 = t2.text;
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
              }
            else if(sign == "- Minus")
              {
                String a1 = t1.text;
                String a2 = t2.text;
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
              }
            else if(sign == "x Multi")
            {
              String a1 = t1.text;
              String a2 = t2.text;
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
            }
            else if(sign == "/ Div")
            {
              String a1 = t1.text;
              String a2 = t2.text;
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
            }
            setState(() {});
          }, child: Text("Enter")),

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
        ],
      ),
    );
  }
}
