import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/ex2.dart';
import 'package:resume/modal.dart';

class Resume2 extends StatefulWidget {
  const Resume2({Key? key}) : super(key: key);

  @override
  State<Resume2> createState() => _Resume2State();
}

class _Resume2State extends State<Resume2> {
  @override
  Widget build(BuildContext context) {
    Modal data = ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff4CB050), title: Text("Your resume")),
        backgroundColor: Colors.grey.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 509,
                width: 360,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.black12, spreadRadius: 1)
                ]),
                child: Row(
                  children: [
                    Container(
                      width: 145,
                      height: 509,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundImage: FileImage(File(data.img!)),
                                maxRadius: 55,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 5, bottom: 5),
                                child: Text(
                                  "ABOUT ME",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 8),
                              child: Text("${data.ab}",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 5, bottom: 5),
                                child: Text(
                                  "CONTACT ME",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.call, size: 10),
                                  ),
                                  Text(
                                    "  +91 ${data.phone}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.mail, size: 10),
                                  ),
                                  Text(
                                    "  ${data.email}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 215,
                      height: 509,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            height: 60,
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${data.fn} ${data.ln}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${data.profession}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "CAREER",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data.ex}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("${data.com}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                          Text("${data.pos}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                          Text("${data.loc}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "EDUCATION",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data.ps}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("${data.scl}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                          Text("${data.degree}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "SIKKLS",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 67,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${data.sk}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                resume2(data);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Download sucessfully..."))
                );
              },
              child: Container(
                height: 40,
                width: 125,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff4CB050),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
