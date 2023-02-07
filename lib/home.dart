import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'modal.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int i = 0;
  int j = 0;
  int a = 0;
  int b = 0;

  TextEditingController txtfn = TextEditingController();
  TextEditingController txtln = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtprofessio = TextEditingController();
  TextEditingController txtscl = TextEditingController();
  TextEditingController txtdegree = TextEditingController();
  TextEditingController txtps = TextEditingController();
  TextEditingController txtcom = TextEditingController();
  TextEditingController txtex = TextEditingController();
  TextEditingController txtpos = TextEditingController();
  TextEditingController txtlo = TextEditingController();
  TextEditingController txtsk = TextEditingController();
  TextEditingController txtab = TextEditingController();
  TextEditingController txtpr = TextEditingController();

  var key1 = GlobalKey<FormState>();
  var key2 = GlobalKey<FormState>();
  var key3 = GlobalKey<FormState>();
  var key4 = GlobalKey<FormState>();
  var key5 = GlobalKey<FormState>();

  String c='';
  double? d;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Create Resume",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if(key1.currentState!.validate()&&c.isNotEmpty)
                          {
                            Modal m1 = Modal(
                              fn: txtfn.text,
                              ln: txtln.text,
                              profession: txtprofessio.text,
                              ab: txtab.text,
                              pos: txtpos.text,
                              sk: txtsk.text,
                              loc: txtlo.text,
                              ex: txtex.text,
                              com: txtcom.text,
                              ps: txtps.text,
                              degree: txtdegree.text,
                              scl: txtscl.text,
                              phone: txtphone.text,
                              email: txtemail.text,
                              img: c,
                              prl: d,
                            );
                            Navigator.pushNamed(context, '2',arguments: m1);
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter the image...")));
                          }
                      });
                    },
                    child: Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4CB050),
                      ),
                      alignment: Alignment.center,
                      child: Text("Creat",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Text("Basic", style: TextStyle(fontSize: 17)),
                          (i == 0)
                              ? Container(
                                  height: 1,
                                  width: 32,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Text("Education", style: TextStyle(fontSize: 17)),
                          (i == 1)
                              ? Container(
                                  height: 1,
                                  width: 60,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Text("Experience", style: TextStyle(fontSize: 17)),
                          (i == 2)
                              ? Container(
                                  height: 1,
                                  width: 65,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Text("Skills", style: TextStyle(fontSize: 17)),
                          (i == 3)
                              ? Container(
                                  height: 1,
                                  width: 32,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 4;
                        });
                      },
                      child: Column(
                        children: [
                          Text("About Me", style: TextStyle(fontSize: 17)),
                          (i == 4)
                              ? Container(
                                  height: 1,
                                  width: 60,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      )),
                ],
              ),
              Expanded(
                child: Container(
                  child: IndexedStack(
                    index: i,
                    alignment: Alignment.center,
                    children: [
                      Basic(),
                      Education(),
                      Experience(),
                      Skills(),
                      Aboutme(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Basic() {
    return Form(
      key: key1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: AlertDialog(
                          title: Text("Select Photo From...."),
                          content: Container(
                            height: 35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                    onTap: ()async{
                                      ImagePicker img = ImagePicker();
                                      XFile? xfile=await img.pickImage(source: ImageSource.camera);
                                      setState(() {
                                        c=xfile!.path;
                                      });
                                    },
                                    child: Text(
                                      "Camera",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          decoration: TextDecoration.none),
                                    )),
                                InkWell(
                                    onTap: ()async{
                                      ImagePicker img = ImagePicker();
                                      XFile? xfile=await img.pickImage(source: ImageSource.gallery);
                                      setState(() {
                                        c=xfile!.path;
                                      });
                                },
                                    child: Text(
                                      "Gallery",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          decoration: TextDecoration.none),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                });
              },
              child: CircleAvatar(
                  maxRadius: 150,
                  backgroundImage: FileImage(File(c)),
                  backgroundColor: Color(0xff4CB050)),
            ),
            SizedBox(
              height: 50,
            ),
            Align(alignment: Alignment.topLeft,child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("First Name"),
            )),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: txtfn,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    label: Text(
                      "eg John",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    )),
                validator: (value) {
                  if(value!.isEmpty)
                    {
                      return "Please enter the name";
                    }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(alignment: Alignment.topLeft,child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Last Name"),
            )),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: txtln,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xffEEEEEE)),
                  ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    label: Text(
                      "eg Doe",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    )),
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the name";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(alignment: Alignment.topLeft,child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Email"),
            )),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: txtemail,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    label: Text(
                      "eg johndoe@gmail.com",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    )),
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the Email";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(alignment: Alignment.topLeft,child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Mobile number"),
            )),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: txtphone,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    label: Text(
                      "eg +91 12345 95652",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    )),
                validator: (value) {
                  if(value!.length!=10)
                  {
                    return "Please enter the Phone number";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(alignment: Alignment.topLeft,child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Profession"),
            )),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: txtprofessio,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xffEEEEEE)),
                    ),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    label: Text(
                      "eg Developer",
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    )),
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the Profession";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Education() {
    return Form(
      key: key2,
      child: IndexedStack(
        index: j,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEEEEEE)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("University :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtscl.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Degree :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtdegree.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Year of passing :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtps.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 50,
              )),
              InkWell(
                onTap: () {
                  setState(() {
                    j = 1;
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4CB050)),
                  alignment: Alignment.center,
                  child: Text("Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("School or university"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtscl,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        hintText: "eg Bhagwan Mahaveer",
                        hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                        ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Degree"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtdegree,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        hintText: "eg Software developer",
                        hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                        ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Year of passing"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: txtps,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        hintText: "eg 1999-2004",
                        hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                        ),
                    validator: (value) {
                      if(value!.length!=9)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if(key2.currentState!.validate()) {
                        j = 0;
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4CB050)),
                    alignment: Alignment.center,
                    child: Text("Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      j = 0;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEEEEEE)),
                    alignment: Alignment.center,
                    child: Text("Discard",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Experience() {
    return Form(
      key: key3,
      child: IndexedStack(
        index: a,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEEEEEE)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Company name :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtcom.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Year of Experience :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtex.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Post :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtpos.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Location :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500)),
                            Text("  ${txtlo.text}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 50,
              )),
              InkWell(
                onTap: () {
                  setState(() {
                    a = 1;
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4CB050)),
                  alignment: Alignment.center,
                  child: Text("Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Company"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtcom,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                      hintText: "eg Infotech PVT LTD",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Year of experience"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: txtex,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        label: Text(
                          "eg 2005-2007",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )),
                    validator: (value) {
                      if(value!.length!=9)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Post"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtpos,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        label: Text(
                          "eg Softwear developer",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("City"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtlo,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        label: Text(
                          "Surat",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if(key3.currentState!.validate())
                      {
                        a = 0;
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4CB050)),
                    alignment: Alignment.center,
                    child: Text("Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      a = 0;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEEEEEE)),
                    alignment: Alignment.center,
                    child: Text("Discard",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Skills() {
    return Form(
      key: key4,
      child: IndexedStack(
        index: b,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEEEEEE)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${txtsk.text}",
                            style: TextStyle(
                                color: Colors.black, fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 200,
              )),
              InkWell(
                onTap: () {
                  setState(() {
                    b = 1;
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4CB050)),
                  alignment: Alignment.center,
                  child: Text("Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Skill"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtsk,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                        hintText: "eg Skill",
                        hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 12,),
                Align(alignment: Alignment.topLeft,child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Expertise"),
                )),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: txtpr,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: Color(0xffEEEEEE),
                      hintText: "eg 50",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 425,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if(key4.currentState!.validate())
                      {
                        d=double.parse(txtpr.text);
                        b = 0;
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4CB050)),
                    alignment: Alignment.center,
                    child: Text("Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      b = 0;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEEEEEE)),
                    alignment: Alignment.center,
                    child: Text("Discard",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Aboutme() {
    return Form(
      key: key5,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft,child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("About "),
              )),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: txtab,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffEEEEEE)),borderRadius: BorderRadius.circular(8)),
                      filled: true,
                      fillColor: Color(0xffEEEEEE),
                      ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Please enter the data";
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
