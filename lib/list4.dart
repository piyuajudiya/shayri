import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayri/model.dart';

class fourth extends StatefulWidget {
  String s;
  String type;

  fourth(this.s, this.type);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  List c = [
    [Color(0xff4158D0), Color(0xffC850C0), Color(0xffFFCC70)],
    [Color(0xff8EC5FC), Color(0xffE0C3FC)],
    [Color(0xffFBAB7E), Color(0xffF7CE68)],
    [Color(0xff00DBDE), Color(0xffFC00FF)],
    [Color(0xff8EC5FC), Color(0xffF7CE68)],
    [Color(0xff8EC5FC), Color(0xff4158D0)],
    [Color(0xff8EC5FC), Color(0xffFFCC70)]
  ];
  List cb = [
    Colors.redAccent,
    Colors.blue,
    Colors.green,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.purple,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.indigo,
    Colors.brown,
    Colors.lightGreenAccent,
    Colors.pink,
    Colors.cyanAccent,
    Colors.indigoAccent,
    Colors.lime,
    Colors.amber,
    Colors.orange,
    Colors.teal,
    Colors.black,
  ];

  Color scolor = Colors.red;
  Color text = Colors.black;
  List<Color> bglr = [Color(0xff85FFBD), Color(0xffE03FC)];
  double s = 30;
  List fan = [
    "family1",
    "family2",
    "family3",
    "family4",
    "family5",
    "family6",
    "family7",
    "family8",
  ];
  String p = "family";

  String emoji = "😂😊🤣👍🙌❤😍😒";
  List e = [
    "😒😁👍🙌😊😂😍❤️",
    "😂😊🤣👍🙌❤️😍😒",
    "🍔🍕🍟🥕🍩🍰🥝",
    "🐻🐼🐨🐔🐒🐈🦛🐘🦎"
  ];

  permissioncheck() async {
    PermissionStatus status = await Permission.storage.status;

    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage, //permission handler
      ].request();
    }

    if (status.isGranted) {
      _createFolder();

      return status.isGranted;
    }

    return Future.value();
  }

  _createFolder() async {
    final folderName = "Love Shayari";
    final path = Directory("storage/emulated/0/DCIM/Love Shayari"); //path
    if ((await path.exists())) {
      // TODO:
      print("exist"); //create folder
    } else {
      // TODO:
      print("not exist");
      path.create();
    }
  }

  GlobalKey _globalKey = GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.png) as ByteData;
      var pngBytes = byteData.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
    }

    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: RepaintBoundary(
                key: _globalKey,
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: widget.type == "single" ? scolor : null,
                        gradient: widget.type == "gradient"
                            ? LinearGradient(colors: bglr)
                            : null),
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Text(
                      "$emoji \n ${widget.s} \n $emoji",
                      style: TextStyle(color: text, fontFamily: p,fontSize: s),
                    ),
                  ),
                ),
              ),
            ),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        int a = Random().nextInt(c.length - 1);
                        bglr = c[a];
                        widget.type = "gradient";
                        setState(() {});
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.autorenew_rounded),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            builder: (context) {
                              return Container(
                                height: 600,
                                child: GridView.builder(
                                    itemCount: c.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            bglr = c[index];
                                            widget.type = "gradient";
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: c[index])),
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10)),
                              );
                            },
                            context: context);
                      },
                      child: Container(
                        width: 70,
                        height: 50,
                        child: Icon(Icons.open_with_outlined),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        showModalBottomSheet(
                            builder: (context) {
                              return Container(
                                height: 150,
                                child: GridView.builder(
                                    itemCount: cb.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            scolor = cb[index];
                                            widget.type = "single";
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Container(
                                          color: cb[index],
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 8,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10)),
                              );
                            },
                            context: context);
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Backround"),
                        ),
                      ),
                    ),
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        showModalBottomSheet(
                            builder: (context) {
                              return Container(
                                height: 150,
                                child: GridView.builder(
                                    itemCount: cb.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            text = cb[index];
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Container(
                                          color: cb[index],
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 8,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10)),
                              );
                            },
                            context: context);
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Text Color"),
                        ),
                      ),
                    ),
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        _capturePng().then((value) {
                          print(value);

                          DateTime d = DateTime.now();

                          String imagename =
                              "LoveShayari${d.year}${d.month}${d.day}${d.hour}${d.minute}${d.second}.jpg";
                          print(imagename);

                          String imagepath = "${model.Folderpath}/$imagename";
                          print(model.Folderpath);
                          File file = File(imagepath);

                          file.writeAsBytes(value).then((value) {
                            Share.shareFiles([file.path]);
                          });
                        });
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Share"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        showModalBottomSheet(
                            builder: (context) {
                              return Container(
                                height: 100,
                                // width: 50,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: fan.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          p = fan[index];
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Container(
                                        width: 100,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 30, horizontal: 10),
                                        color: Colors.pink,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "shayari",
                                          style: TextStyle(
                                              fontFamily: fan[index],
                                              color: Colors.white),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                            context: context);
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Font"),
                        ),
                      ),
                    ),
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        showModalBottomSheet(
                            builder: (context) {
                              return Container(
                                height: 150,
                                child: ListView.builder(
                                  itemCount: e.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          emoji = e[index];
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        margin: EdgeInsets.all(5),
                                        color: Colors.black,
                                        alignment: Alignment.center,
                                        child: Text("${e[index]}"),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                            context: context);
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Emoji"),
                        ),
                      ),
                    ),
                    InkWell(
                      hoverColor: Colors.pink,
                      onTap: () {
                        showModalBottomSheet(builder: (context) {
                          return Container(
                            height: 120,
                            color: Color(0xff130f40),
                            child: StatefulBuilder(builder: (context, setState1) {
                              return Slider(onChanged: (value) {
                                print(value);
                                setState(() {
                                  setState1(() {
                                    s = value;
                                  });
                                });
                              },
                                value: s,
                                max: 60,
                                min: 20,
                                activeColor: Colors.pink,
                                inactiveColor: Colors.grey,
                                thumbColor: Colors.pink,
                                // divisions: 100,
                                label: "$s",);
                            },),
                          );
                        },context: context);
                      },
                      child: Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          margin: EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("Text Size"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
