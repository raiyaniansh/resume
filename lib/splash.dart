import 'package:flutter/material.dart';
import 'package:resume/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Homescreen(),
          ));
    });
  }

  final string2 = 'Make your resume creative';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/2.png')),
              Expanded(
                  child: SizedBox(
                height: 10,
              )),
              TweenAnimationBuilder<int>(
                tween: IntTween(begin: 0, end: string2.length),
                duration: Duration(seconds: 5),
                builder: (context, value, child) {
                  return Text(
                    string2.substring(0, value),
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff4CB050)),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
