import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/ex3.dart';

import 'modal.dart';

class Resume3 extends StatefulWidget {
  const Resume3({Key? key}) : super(key: key);

  @override
  State<Resume3> createState() => _Resume3State();
}

class _Resume3State extends State<Resume3> {
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
                decoration: BoxDecoration(color: Colors.black87.withOpacity(0.80)),
                child: Row(
                  children: [
                    Container(
                      width: 145,
                      height: 509,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 5),
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
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,top: 5,bottom: 2),
                                child: Text(
                                  "CONTACT ME",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(width: 25,height: 2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.call,color: Colors.white, size: 15),
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
                              padding: const EdgeInsets.only(left: 10,right: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.mail, size: 15,color: Colors.white),
                                  Text(
                                    "  ${data.email}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 5),
                              child: Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.black87,
                              ),
                            ),
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,top: 5,bottom: 2),
                                child: Text(
                                  "EDUCATION",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(width: 25,height: 2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${data.ps}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    Text("${data.scl}", style: TextStyle(color: Colors.white, fontSize: 16)),
                                    Text("${data.degree}", style: TextStyle(color: Colors.white, fontSize: 16)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(height: 5,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 5),
                              child: Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.black87,
                              ),
                            ),
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,top: 5,bottom: 2),
                                child: Text(
                                  "SKILLS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(width: 25,height: 2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "${data.sk}",
                                    style: TextStyle(color: Colors.white,fontSize: 16),
                                  ),
                                  SizedBox(width: 5,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 215,
                      height: 495,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(height: 70,width: 170,decoration: BoxDecoration(border: Border.all(color: Colors.black38)),),
                                    Positioned(bottom: 5,left: -1,child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(" ${data.fn}     ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,backgroundColor: Colors.white,letterSpacing: 2),),
                                        Text(" ${data.ln}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,backgroundColor: Colors.white,letterSpacing: 2),),
                                        Padding(padding: EdgeInsets.only(left: 10,right: 10),child: Container(height: 1,width: 150,color: Colors.black38),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,bottom: 2,top: 2),
                                          child: Text("${data.profession}",style: TextStyle(color: Colors.black38),),
                                        )
                                      ],
                                    )),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 70,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: Colors.black38,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 170,
                              child: Text(
                                "PROFILE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                            ),
                            Container(width: 25,height: 2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("${data.ab}"),
                            SizedBox(height: 8,),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black38,
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 170,
                              child: Text(
                                "WORK EXPERIENCE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                            ),
                            Container(width: 25,height: 2,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("${data.com}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  Text(" - ${data.pos}", style: TextStyle(color: Colors.black, fontSize: 16)),
                                  Text(" - ${data.ex}", style: TextStyle(color: Colors.black, fontSize: 16)),
                                  Text(" - ${data.loc}", style: TextStyle(color: Colors.black, fontSize: 16)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                resume3(data);
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
