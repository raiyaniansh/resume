import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    List data=ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              InkWell(onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'R1',arguments: data);
                });
              },child: Image.asset("assets/images/r1-0.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}
