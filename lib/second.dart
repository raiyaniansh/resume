import 'package:flutter/material.dart';
import 'package:resume/ex.dart';
import 'package:resume/modal.dart';
import 'package:resume/resume1.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    Modal data=ModalRoute.of(context)!.settings.arguments as Modal;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Container(
                  height: 200,
                  child: InkWell(onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'R5',arguments: data);
                    });
                  },child: Image.asset("assets/images/5.jpg")),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      child: InkWell(onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'R1',arguments: data);
                        });
                      },child: Image.asset("assets/images/1.jpg")),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      height: 200,
                      child: InkWell(onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'R2',arguments: data);
                        });
                      },child: Image.asset("assets/images/6.jpg")),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      child: InkWell(onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'R3',arguments: data);
                        });
                      },child: Image.asset("assets/images/3.jpg")),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      height: 200,
                      child: InkWell(onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'R4',arguments: data);
                        });
                      },child: Image.asset("assets/images/4.jpg")),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
