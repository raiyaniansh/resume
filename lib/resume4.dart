import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/ex4.dart';

import 'modal.dart';

class Resume4 extends StatefulWidget {
  const Resume4({Key? key}) : super(key: key);

  @override
  State<Resume4> createState() => _Resume4State();
}

class _Resume4State extends State<Resume4> {
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
                      color: Color(0xff303A43),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: (data.img!='')?Image.file(File(data.img!)):Image.asset('assets/images/2.png'),
                          ),
                          Container(
                            height: 50,
                            width: 145,
                            color: Color(0xff088DC5),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${data.fn} ${data.ln}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  Text("${data.profession}",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                      color: Color(0xff088DC5),
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.call, size: 10,color: Colors.white),
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                      color: Color(0xff088DC5),
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.mail, size: 10,color: Colors.white),
                                ),
                                Text(
                                  "  ${data.email}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 1,
                              width: 150,
                              color: Colors.white38,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "EDUCATION",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${data.scl}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text("${data.degree}", style: TextStyle(color: Colors.white, fontSize: 18)),
                                  Text("${data.ps}", style: TextStyle(color: Colors.white, fontSize: 18)),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "PROFILE",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1),
                                    ),
                                    Expanded(child: SizedBox(width: 1,)),
                                    Container(height: 1,width: 140,color: Colors.black45,)
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("${data.ab}"),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "EXPERIENCE",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(width: 5,),
                                    Expanded(child: Container(height: 1,width: 140,color: Colors.black45,))
                                  ],
                                ),
                                SizedBox(height: 10,),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${data.ex}", style: TextStyle(color: Colors.black, fontSize: 18)),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 45,
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
                                Text("${data.loc}", style: TextStyle(color: Colors.black, fontSize: 18)),
                              ],
                            ),
                          ],
                        ),
                      ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "EXPARTISES",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(width: 5,),
                                    Expanded(child: Container(height: 1,width: 140,color: Colors.black45,))
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Column(
                                  children: [
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${data.sk}",
                                      style: TextStyle(color: Colors.black,fontSize: 18),
                                    ),
                                    SizedBox(height: 5,),

                                  ],
                                ),
                                  ],
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
                resume4(data);
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
