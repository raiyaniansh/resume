import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  File? _image;

  final _picker = ImagePicker();

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

  String? c, d, e, f, g, h, k, l, m;

  List Skill = [];
  List Uni = [];
  List Deg = [];
  List Year = [];
  List Comn = [];
  List Yep = [];
  List Post = [];
  List Loc = [];
  List mod=[];


  var key1 = GlobalKey<FormState>();
  var key2 = GlobalKey<FormState>();
  var key3 = GlobalKey<FormState>();
  var key4 = GlobalKey<FormState>();
  var key5 = GlobalKey<FormState>();

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

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
                        if(key1.currentState!.validate())
                          {
                            mod.add(txtfn.text);
                            mod.add(txtln.text);
                            mod.add(txtemail.text);
                            mod.add(txtphone.text);
                            mod.add(txtprofessio.text);
                            mod.add(Skill);
                            mod.add(Uni);
                            mod.add(Deg);
                            mod.add(Year);
                            mod.add(Comn);
                            mod.add(Yep);
                            mod.add(Post);
                            mod.add(Loc);
                            mod.add(txtab.text);
                            Navigator.pushNamed(context, '2',arguments: mod);
                            print(mod);
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
                                    onTap: () {
                                      setState(() async {
                                        ImagePicker image = ImagePicker();
                                        XFile? pf = await image.pickImage(
                                            source: ImageSource.camera);
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
                                    onTap: _openImagePicker,
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
                  maxRadius: 100,
                  // backgroundImage: NetworkImage(uri),
                  backgroundColor: Color(0xff4CB050)),
            ),
            SizedBox(
              height: 50,
            ),
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
                      "First Name",
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
              height: 20,
            ),
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
                      "Last Name",
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
              height: 20,
            ),
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
                      "Email",
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
              height: 20,
            ),
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
                      "Mobile number",
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
              height: 20,
            ),
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
                      "Profession",
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
              Column(
                children: Uni.asMap()
                    .entries
                    .map((e) => Padding(
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
                                      Text("  ${Uni[e.key]}",
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
                                      Text("  ${Deg[e.key]}",
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
                                      Text("  ${Year[e.key]}",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
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
                  height: 50,
                ),
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
                        label: Text(
                          "School or university",
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
                  height: 20,
                ),
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
                        label: Text(
                          "Degree",
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
                  height: 20,
                ),
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
                        label: Text(
                          "Year of passing",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )),
                    validator: (value) {
                      if(value!.length!=4)
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
                        c = txtscl.text;
                        d = txtdegree.text;
                        e = txtps.text;
                        j = 0;
                        Uni.add(c);
                        Deg.add(d);
                        Year.add(e);
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
              Column(
                children: Post.asMap()
                    .entries
                    .map(
                      (e) => Padding(
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
                                    Text("  ${Comn[e.key]}",
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
                                    Text("  ${Yep[e.key]}",
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
                                    Text("  ${Post[e.key]}",
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
                                    Text("  ${Loc[e.key]}",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
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
                  height: 50,
                ),
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
                        label: Text(
                          "Company",
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
                  height: 20,
                ),
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
                          "Year of Experience",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )),
                    validator: (value) {
                      if(value!.length!=2)
                      {
                        return "Please enter the data";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                          "Post",
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
                  height: 20,
                ),
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
                          "Location",
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
                        f = txtcom.text;
                        g = txtex.text;
                        k = txtpos.text;
                        h = txtlo.text;
                        a = 0;
                        Comn.add(f);
                        Yep.add(g);
                        Post.add(k);
                        Loc.add(h);
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
              Column(
                children: Skill.asMap()
                    .entries
                    .map(
                      (e) => Padding(
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
                                Text(Skill[e.key],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
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
                  height: 50,
                ),
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
                        label: Text(
                          "Skill",
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
                  height: 450,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if(key4.currentState!.validate())
                      {
                        l = txtsk.text;
                        b = 0;
                        Skill.add(l);
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
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
                        label: Text(
                          "About",
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
                SizedBox(height: 550),
                InkWell(
                  onTap: () {
                    setState(() {
                      if(key5.currentState!.validate()) {
                        l = txtab.text;
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
