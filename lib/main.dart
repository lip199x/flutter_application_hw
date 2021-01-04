import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(SuperFriends());
}

class SuperFriends extends StatelessWidget {
  final List<String> _friendImages = [
    "images/nueng.png",
    "images/baw.png",
    "images/jeaw.png",
  ];

  final List<String> _friendNames = [
    "NUENG",
    "BAW",
    "JEAW",
  ];

  final List<String> _friendDetails = [
    "ความสัมพันธ์ที่มีต่อเพื่อน : เพื่อนสนิทที่สุด เป็นคนที่รับฟัง อยู่ด้วยแล้วสบายใจ คอยช่วยเหลือ คอยรับฟังอยู่เสมอ",
    "ความสัมพันธ์ที่มีต่อเพื่อน : เป็นคนที่คอยช่วยเหลือเรื่องงานที่ดีที่สุดของเพื่อนในห้อง คอยช่วยเหลือเพื่อนตลอด คอยให้คำปรึกษาเรื่องงาน และพร้อมที่จะช่วยเหลือเพื่อนทุกเมื่อ",
    "ความสัมพันธ์ที่มีต่อเพื่อน : อยู่ข้างๆเพื่อนเสมอในทุกสถานการณ์ ยื่นมือเข้าไปช่วยเหลือเพื่อนในวันที่เพื่อนขอความขอช่วย แสดงให้เห็นว่ามีความจริงใจกับเพื่อนรอบข้าง ",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.limeAccent[400],
          title: Text(
            "FRIENDS",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mitr'),
          ),
        ),
        body: SafeArea(
            child: ListView(children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Super Friends",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mitr',
                        color: Colors.limeAccent[400]),
                  ),
                ),
              ),
              Friend(this._friendNames[0], this._friendImages[0],
                  this._friendDetails[0]),
              Friend(this._friendNames[1], this._friendImages[1],
                  this._friendDetails[1]),
              Friend(this._friendNames[2], this._friendImages[2],
                  this._friendDetails[2]),
            ],
          ),
        ])),
      ),
    );
  }
}

class Friend extends StatelessWidget {
  String _friendName;
  String _friendImages;
  String _friendDetail;

  Friend(this._friendName, this._friendImages, this._friendDetail, {Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          color: Colors.grey[700],
          child: Column(
            children: [
              SizedBox(height: 10),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(this._friendImages),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.pink,
                    ),
                    Text(
                      this._friendName,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Mitr',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  this._friendDetail,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Mitr',
                      color: Colors.limeAccent[400],
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(25),
              )
            ],
          )),
    );
  }
}
