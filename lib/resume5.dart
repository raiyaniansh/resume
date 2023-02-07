import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resume/ex5.dart';

import 'modal.dart';

class Resume5 extends StatefulWidget {
  const Resume5({Key? key}) : super(key: key);

  @override
  State<Resume5> createState() => _Resume5State();
}

class _Resume5State extends State<Resume5> {
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
                      color: Color(0xff283643),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundImage: FileImage(File(data.img!)),
                                maxRadius: 55,
                              ),
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
                              height: 3,
                            ),
                            Container(
                              height: 1,
                              width: 20,
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
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "SKILLS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 1,
                              width: 20,
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
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 130,
                              width: 205,
                              color: Color(0xffEBECEE),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 1,
                                          width: 30,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(width: 3,),
                                        Transform.rotate(
                                          angle: pi/4,
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black54,strokeAlign: StrokeAlign.inside)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 3,),
                                        Container(
                                          height: 1,
                                          width: 30,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "${data.fn} ${data.ln}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 3,),
                                    Container(
                                      width: 120,
                                      height: 1,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(height: 3,),
                                    Text(
                                      "${data.profession}",
                                      style: TextStyle(color: Colors.black54,fontSize: 18,letterSpacing: 2),
                                    ),
                                  ],
                                ),
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
                                      color: Color(0xff283643),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 1,
                                  width: 20,
                                  color: Color(0xff283643),
                                ),
                                SizedBox(height: 5,),
                                Text("${data.ab}",style: TextStyle(color: Color(0xff283643),fontSize: 15)),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(height: 1,width: double.infinity,color: Colors.black26,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "EXPERIENCE",
                                  style: TextStyle(
                                      color: Color(0xff283643),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 1,
                                  width: 20,
                                  color: Color(0xff283643),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("${data.com}",style: TextStyle(color: Color(0xff283643), fontSize: 16, fontWeight: FontWeight.w600)),
                                          Expanded(child: SizedBox(width: 1,)),
                                          Text("${data.ex}", style: TextStyle(color: Colors.black54, fontSize: 14)),
                                        ],
                                      ),
                                      Text("${data.pos}", style: TextStyle(color: Colors.black54, fontSize: 14)),
                                      Text("${data.loc}", style: TextStyle(color: Colors.black54, fontSize: 14)),
                                      SizedBox(height: 5,),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(height: 1,width: double.infinity,color: Colors.black26,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "EDUCATION",
                                  style: TextStyle(
                                      color: Color(0xff283643),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                                Container(
                                  height: 1,
                                  width: 20,
                                  color: Color(0xff283643),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("${data.scl}",
                                              style: TextStyle(
                                                  color: Color(0xff283643),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                      Text("${data.degree}", style: TextStyle(color: Colors.black54, fontSize: 14)),
                                      Text("${data.ps}", style: TextStyle(color: Colors.black54, fontSize: 14)),
                                      SizedBox(height: 5,),
                                    ],
                                  ),
                                ),
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
                resume5(data);
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
