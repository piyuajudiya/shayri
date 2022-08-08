import 'package:flutter/material.dart';
import 'package:shayri/list3.dart';

class second extends StatefulWidget {
  int i;

  // double d;
  String s;

  // bool b;

  second(this.i, this.s);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List love = [
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
  ];
  List Friend = [
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];

  List God = [
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];
  List Life = [
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];
  List Memories = [
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        "Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,",
    "Khuda Ne Dost Hi Itna Pyara Diya Hai."
        "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];
  List Funny = [
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        "Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,",
    "Khuda Ne Dost Hi Itna Pyara Diya Hai."
        "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];
  List Birthday = [
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        "Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,",
    "Khuda Ne Dost Hi Itna Pyara Diya Hai."
        "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];
  List Other = [
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        "Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,"
        "Khuda Ne Dost Hi Itna Pyara Diya Hai.",
    "Aasmaan Se Tod Kar Sitara Diya Hai,"
        " Aalam-e-Tanhai Mein Ek Sharara Diya Hai,"
        "Meri Kismat Bhi Naaz Karti Hai Mujhpe,",
    "Khuda Ne Dost Hi Itna Pyara Diya Hai."
        "Meri Talab Tha Ek Shakhs"
        "Wo Jo Nahi Mila Toh Phir,"
        " Haath Duaa Se Yun Gira"
        "Bhool Gaya Sawaal Bhi.",
    "Wafaon Ki Baatein Ki Zafaon Ke Samne,"
        "Le Chale Hum Chirag Hawaon Ke Saamne,"
        "Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,"
        "   Majboor Hai Khuda Bhi Duaaon Ke Saamne.",
    "Udas na baitho fiza tang karegi,"
        " Gujre hue lamho ki sazaa tang karegi, "
        "Kisi ko na lao dil ke itna karib, "
        " Q ki uske jane ke baad uski har adaa tang karegi…"
  ];

  List temp = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.i == 0) {
      temp = love;
    } else if (widget.i == 1) {
      temp = Friend;
    } else if (widget.i == 2) {
      temp = God;
    } else if (widget.i == 3) {
      temp = Life;
    } else if (widget.i == 4) {
      temp = Memories;
    } else if (widget.i == 5) {
      temp = Funny;
    } else if (widget.i == 6) {
      temp = Birthday;
    } else if (widget.i == 7) {
      temp = Other;
    }
    print(temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                hoverColor: Colors.pinkAccent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return third(temp,index);
                  },),);
                  setState(() {});
                },
                leading: Container(
                  child: Image.asset("image/${widget.s}"),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                title: Text("${temp[index]}",maxLines: 2,),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black,
                height: 20,
              );
            },
            itemCount: temp.length));
  }
}
