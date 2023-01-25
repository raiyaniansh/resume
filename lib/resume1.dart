import 'dart:math';

import 'package:flutter/material.dart';

class Resume1 extends StatefulWidget {
  const Resume1({Key? key}) : super(key: key);

  @override
  State<Resume1> createState() => _Resume1State();
}

class _Resume1State extends State<Resume1> {
  List Uni = [];
  List Deg = [];
  List Year = [];
  List Com = [];
  List Yep = [];
  List Post = [];
  List Loc = [];
  List Skills = [];

  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)!.settings.arguments as List;
    Uni = data[6];
    Deg = data[7];
    Year = data[8];
    Com = data[9];
    Yep = data[10];
    Post = data[11];
    Loc = data[12];
    Skills = data[5];
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 784.5,
                  child: Image.asset(
                    "assets/images/r1-0.jpg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  top: 15,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data[0]} ${data[1]}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${data[4]}",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  )),
              Positioned(
                  top: 115,
                  right: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.rotate(
                        angle: pi/4,
                        child: Container(
                          height: 118,
                          width: 118,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text(
                        "CONTACT",
                        style: TextStyle(
                            color: Color(0xff07073b),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail,size: 15,color: Color(0xff07073b)),
                          SizedBox(width: 3,),
                          Text(
                            "${data[2]}",
                            style: TextStyle(color: Color(0xff07073b), fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.call,size: 15,color: Color(0xff07073b)),
                          SizedBox(width: 3,),
                          Text(
                            "+91 ${data[3]}",
                            style: TextStyle(color: Color(0xff07073b), fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Text(
                        "SKILLS",
                        style: TextStyle(
                            color: Color(0xff07073b),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: Skills.asMap().entries.map((e) => Skill(Skills[e.key])).toList(),
                      ),
                    ],
                  )),
              Positioned(
                top: 190,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 185,
                        decoration: BoxDecoration(
                            color: Color(0xffbbbbe7),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text("ABOUT ME",
                              style: TextStyle(
                                  color: Color(0xff07073b), fontSize: 20,fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 60,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 12),
                          child: Text("${data[13]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 30,
                        width: 185,
                        decoration: BoxDecoration(
                            color: Color(0xffbbbbe7),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text("EDUCATION",
                              style: TextStyle(
                                  color: Color(0xff07073b), fontSize: 20,fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        width: 185,
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: Uni.asMap()
                              .entries
                              .map(
                                  (e) => Edu(Uni[e.key], Deg[e.key], Year[e.key]))
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 30,
                        width: 185,
                        decoration: BoxDecoration(
                            color: Color(0xffbbbbe7),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text("EXPERIENCE",
                              style: TextStyle(
                                  color: Color(0xff07073b), fontSize: 20,fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        width: 185,
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: Com.asMap()
                              .entries
                              .map(
                                  (e) => Comp(Com[e.key], Yep[e.key], Post[e.key],Loc[e.key]))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Widget Edu(String a, String b, String c) {
    return Container(
      width: 150,
      height: 62,
      child: Padding(
        padding: EdgeInsets.only(top: 5, left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$a", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("$b", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("$c", style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }
  Widget Comp(String a, String b, String c, String d) {
    return Container(
      width: 150,
      child: Padding(
        padding: EdgeInsets.only(top: 5, left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$a", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("$b", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("$c", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("$d", style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }
  Widget Skill(String a){
    return Text("$a}");
  }
}
