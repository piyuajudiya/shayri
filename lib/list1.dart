import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayri/list2.dart';
  import 'package:shayri/model.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
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

    model.Folderpath = path.path;
  }

  List k = [
    "i.jpg",
    "i1.jpg",
    "i2.jpg",
    "i3.jpg",
    "i4.jpg",
    "i5.jpg",
    "i6.jpg",
    "i7.jpg"
  ];
  List<String> l = [
    "Love",
    "Friend",
    "God",
    "Life",
    "Memories",
    "Funny",
    "Birthday",
    "Other"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    permissioncheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Love Shayari"),
        backgroundColor: Colors.green,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        leading: Icon(Icons.share),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Divider(
              color: Colors.black,
              height: 10,
            );
          },
          separatorBuilder: (context, index) {
            return ListTile(
              hoverColor: Colors.pinkAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return second(index, k[index]);
                    },
                  ),
                );
                setState(() {
                  // Colors.lightGreen;
                });
              },
              leading: Container(
                height: 50,
                width: 50,
                child: Image.asset(
                  "image/${k[index]}",
                  fit: BoxFit.fill,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: Text(
                '${l[index]}',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            );
          },
          itemCount: l.length + 1),
    );
  }
}
