// import 'package:finda_a_table/pages/perfil.dart';
import 'package:finda_a_table/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 90),
              child: Container(
                width: 250,
                height: 250,
                child: FlareActor(
                  "assets/flare/logoanimada.flr",
                  animation: "Gif",
                ),
              ),
              // Image.asset(
              //   "assets/images/logo-nome.png",
              //   height: 250,
              // ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Column(
                children: <Widget>[
                  Text(
                    "FROM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "W4S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF002B32),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
