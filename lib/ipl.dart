import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayri/ipl/ipl2.dart';

class ipl extends StatefulWidget {
  const ipl({Key? key}) : super(key: key);

  @override
  State<ipl> createState() => _iplState();
}

permission() async {
  var status = await Permission.storage.status;

  Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
  ].request();
}

_createFolder() async {
  final folderName = "some_name";
  final path = Directory("storage/emulated/0/$folderName");
  if ((await path.exists())) {
    // TODO:
    print("exist");
  } else {
    // TODO:
    print("not exist");
    path.create();
  }
}
// Future<Uint8List> _capturePng() async {
//   try {
//     print('inside');
//     RenderRepaintBoundary boundary =
//     _globalKey.currentContext.findRenderObject();
//     ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//     ByteData byteData =
//     await image.toByteData(format: ui.ImageByteFormat.png);
//     var pngBytes = byteData.buffer.asUint8List();
//     var bs64 = base64Encode(pngBytes);
//     print(pngBytes);
//     print(bs64);
//     setState(() {});
//     return pngBytes;
//   } catch (e) {
//     print(e);
//   }
// }

class _iplState extends State<ipl> {
  List image = [
    "csk.jpg",
    "gt.jpg",
    "lsg.jpg",
    "mi.jpg",
    "rcb.jpg",
    "rr.jpg",
    "srh.jpg",
    "p.jpg",
    "kkr.jpg",
    "dc.jpg"
  ];
  List name = [
    "Chennai super kings",
    "Gujrat titans",
    "Lucknow super giants",
    "Mumbai indians",
    "Royal chellenger banglore",
    "Rajasthan royal",
    "Sunrises hydrabad",
    "Punjab kings",
    "Kolkata knight riders",
    "Delhi capitals"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IPL"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Divider(
                height: 10,
                color: Colors.black,
              );
            },
            separatorBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ipl2(index);
                    },
                  ));
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("image/${image[index]}"),
                ),
                title: Text(
                  "${name[index]}",
                  style: TextStyle(fontSize: 20),
                ),
              );
            },
            itemCount: name.length + 1));
  }
}
