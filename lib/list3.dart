import 'dart:math';
import 'dart:ui';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayri/list4.dart';

class third extends StatefulWidget {
  List l;
  int y;

  third(this.l, this.y);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List c = [
    [Color(0xff4158D0), Color(0xffC850C0), Color(0xffFFCC70)],
    [Color(0xff8EC5FC), Color(0xffE0C3FC)],
    [Color(0xffC850C0), Color(0xffF7CE68)],
    [Color(0xff00DBDE), Color(0xffFC00FF)],
    [Color(0xff8EC5FC), Color(0xffF7CE68)],
    [Color(0xff8EC5FC), Color(0xff4158D0)],
    [Color(0xff8EC5FC), Color(0xffFFCC70)]
  ];
  List<Color> bgclr = [Color(0xff85FFBD), Color(0xffE03FC)];
  PageController? p;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    p = PageController(initialPage: widget.y);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                                        bgclr = c[index];
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          gradient:
                                              LinearGradient(colors: c[index])),
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
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    child: Icon(Icons.open_with_outlined),
                  ),
                ),
                Container(
                    child: Text(
                      "${widget.y + 1}/${widget.l.length}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.transparent),
                InkWell(
                  onTap: () {
                    int a = Random().nextInt(c.length - 1);
                    bgclr = c[a];
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    child: Icon(Icons.autorenew_rounded),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: bgclr,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: PageView.builder(
                    onPageChanged: (value) {
                      print(value);
                      setState(() {
                        widget.y = value;
                      });
                    },
                    controller: p,
                    itemCount: widget.l.length,
                    itemBuilder: (context, index) {
                      return Text("${widget.l[widget.y]}");
                    },
                  ),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center),
            ),
            Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      FlutterClipboard.copy("${widget.l[widget.y]}")
                          .then((value) {
                        Fluttertoast.showToast(
                            msg: "Copied",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                      setState(() {});
                    },
                    child: Container(
                      // height: 50,
                      width: 70,
                      color: Colors.transparent,
                      child: Icon(Icons.file_copy_outlined),
                    ),
                  ),
                  InkWell(
                    //splashColor: Colors.indigo,
                    onTap: () {
                      if (widget.y < 1) {
                      } else {
                        widget.y--;
                        p!.jumpToPage(widget.y);
                      }
                      setState(() {});
                    },
                    child: Container(
                      //height: 50,
                      width: 70,
                      color: Colors.transparent,
                      child: Icon(Icons.chevron_left, size: 40),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return fourth(widget.l[widget.y], "single");
                        },
                      ));
                    },
                    child: Container(
                      //height: 50,
                      width: 70,
                      color: Colors.transparent,
                      child: Icon(Icons.healing_outlined),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (widget.y + 1 < widget.l.length) {
                        widget.y++;
                        p!.jumpToPage(widget.y);
                      }
                      setState(() {});
                    },
                    child: Container(
                      //height: 50,
                      width: 70,
                      color: Colors.transparent,
                      child: Icon(Icons.chevron_right, size: 40),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Share.share(' ${widget.l[widget.y]}',
                          subject: 'Look what I made!');
                    },
                    child: Container(
                      //height: 50,
                      width: 70,
                      color: Colors.transparent,
                      child: Icon(Icons.share),
                    ),
                  )
                ],
              ),
              color: Colors.green,
              height: 50,
            )
          ],
        ));
  }
}
