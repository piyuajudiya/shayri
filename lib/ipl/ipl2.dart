import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shayri/ipl3.dart';

class ipl2 extends StatefulWidget {
  int i;

  ipl2(this.i);

  // int
  // ipl2();

  @override
  State<ipl2> createState() => _ipl2State();
}

class _ipl2State extends State<ipl2> {
  List csk = [
    " MS dhoni",
    "Deepak Chahar",
    "Shivam dube",
    "Moen Ali",
    "Dwayne bravo",
    "ravindra jadeja",
    "Ambati raydu",
    "ruturaj gaikwad",
    "KM asif",
    "Deepak Chahar"
  ];
  List gt = [
    "Abhinav Manohar",
    "David Miller",
    "Jayant yadav",
    "Shubman Gill ",
    "Rashid khan",
    "Hardik pandya",
    "Mohammad shami",
    "rahul tewatia",
    "Sai sudharsan",
    "dominic drakes"
  ];
  List a = [
    "1.jpg",
    "2.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "3.jpg"
  ];
  List b = [
    "11.jpg",
    "12.jpg",
    "13.jpg",
    "14.jpg",
    "15.jpg",
    "16.jpg",
    "17.jpg",
    "18.jpg",
    "19.jpg",
    "20.jpg",
  ];

  List temp = [];
  List temp1 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.i == 0) {
      temp = csk;
      temp1 = a;
    }
    if (widget.i == 1) {
      temp = gt;
      temp1 = b;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: GridView.builder(
          itemCount: temp.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ipl3(temp1[index], temp[index]);
                    },
                  ));
                },
                child: GridTile(
                  child: Image.asset("image/${temp1[index]}"),
                  footer: Container(
                    color: Colors.white54,
                    padding:EdgeInsets.all(10),
                    child: Text("${temp[index]}",
                        style: TextStyle(color: Colors.black)),
                    alignment: Alignment.center,
                  ),
                ));
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10),
        ),
      ),
    );
  }
}
