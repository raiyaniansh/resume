import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume/ex.dart';
import 'package:resume/modal.dart';

class Resume1 extends StatefulWidget {
  const Resume1({Key? key}) : super(key: key);

  @override
  State<Resume1> createState() => _Resume1State();
}

class _Resume1State extends State<Resume1> {
  @override
  Widget build(BuildContext context) {
    Modal data = ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff4CB050), title: Text("Your resume")),
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: FileImage(File(data.img!)),
                              maxRadius: 55,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "CONTACTS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Container(
                              height: 1,
                              width: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
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
                            SizedBox(
                              height: 8,
                            ),
                            Row(
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
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "SKILLS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Container(
                              height: 1,
                              width: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${data.sk}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Expanded(child: SizedBox(width: 1,)),
                                Text(
                                  "${data.prl} %",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
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
                            height: 25,
                          ),
                          Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${data.fn} ${data.ln}",
                                    style: TextStyle(
                                      color: Colors.white,
                                        fontSize: 25,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${data.profession}",
                                    style: TextStyle(color: Colors.white,fontSize: 18),
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
                                  "PROFILE",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 1,
                                  width: 100,
                                  color: Colors.black,
                                ),
                                Text("${data.ab}"),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "EXPERIENCE",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 1,
                                  width: 100,
                                  color: Colors.black,
                                ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        width: 1,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${data.com}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                      Text("${data.pos}", style: TextStyle(color: Colors.black, fontSize: 18)),
                                      Text("${data.ex}", style: TextStyle(color: Colors.black, fontSize: 18)),
                                      Text("${data.loc}", style: TextStyle(color: Colors.black, fontSize: 18)),
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
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                Container(
                                  height: 1,
                                  width: 100,
                                  color: Colors.black,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 1,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${data.scl}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500)),
                                          Text("${data.degree}", style: TextStyle(color: Colors.black, fontSize: 20)),
                                          Text("${data.ps}", style: TextStyle(color: Colors.black, fontSize: 20)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                resume1(data);
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
