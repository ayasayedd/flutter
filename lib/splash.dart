import 'package:flutter/material.dart';

import 'login_page.dart';

class Splash extends StatefulWidget {
  Splash(splash);

  // const Splash(param0, { Key key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff305cac),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/splash.png',
              width: 150,
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
            ),
          ],
        ),
      ),
    );
  }
}
