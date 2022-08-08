import 'package:flutter/material.dart';

class ipl3 extends StatefulWidget {
 String s;
 String s1;
ipl3(this.s, this.s1);
  @override
  State<ipl3> createState() => _ipl3State();
}

class _ipl3State extends State<ipl3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        title: Image.asset("image/${widget.s}"),
        subtitle: Text("${widget.s1} ",style: TextStyle(fontSize: 15,color: Colors.black),) ,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },child: Icon(Icons.share),
      backgroundColor: Colors.black,),
      

    );
  }
}
