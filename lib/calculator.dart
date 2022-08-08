import 'package:flutter/material.dart';

class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  TextEditingController s = TextEditingController();
  TextEditingController s1 = TextEditingController();
  String t = "", t1 = "";
  String ans = "";
  double h = 0, p = 0;
  String x = "cm";
  String x1 = "feet";
  String grp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" BMI Calculator"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: s,
              decoration: InputDecoration(
                  hintText: "Enter height",
                  labelText: "height",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: s1,
              decoration: InputDecoration(
                  hintText: "Enter weight",
                  labelText: "weight",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Row(
            children: [
              Radio(
                onChanged: (value) {
                  setState(() {
                    grp = value as String;
                  });
                  t = s.text;
                  double a = num.parse(t).toDouble();
                  h = a / 100;
                },
                value: x,
                groupValue: grp,
              ),
              Text(x),
              Radio(
                onChanged: (value) {
                  setState(() {
                    grp = value as String;
                  });
                  t = s.text;
                  double a = num.parse(t).toDouble();
                  h = a / 3.29;
                },
                value: x1,
                groupValue: grp,
              ),
              Text(x1),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
          primary:Colors.blueAccent
          ),
              onPressed: () {
                setState(() {
                  t1 = s1.text;
                  // double a = num.parse(t).toDouble();
                  double b = num.parse(t1).toDouble();

                  p = b / (h * h);
                  print(p);
                  if (p < 16) {
                    ans = "Underweight";
                  } else if (p > 16 && p < 35) {
                    ans = "Normal";
                  } else if (p > 35) {
                    ans = "Overweight";
                  }
                });
              },
              child: Text("Submit")),
          Text("$ans"),
        ],
      ),
    );
  }
}
