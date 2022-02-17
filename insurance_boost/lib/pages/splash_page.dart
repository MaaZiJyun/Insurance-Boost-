import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        backgroundColor: Colors.teal,
        body: Stack(
          children: [
            // new Container(
            //   child: new Image.network(
            //     "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
            //     fit: BoxFit.fill,
            //   ),
            // ),
            new Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'W & M',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your best insurance boost application',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
            new Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.fromLTRB(0.0, 45.0, 10.0, 0.0),
              child: OutlineButton(
                child: new Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new StadiumBorder(),
                onPressed: () {
                  _skip();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initState() {
    super.initState();
    _countDown();
  }

  void _skip() {
    Navigator.pushReplacementNamed(context, 'SettingsPage');
  }

  void _countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, _skip);
  }
}