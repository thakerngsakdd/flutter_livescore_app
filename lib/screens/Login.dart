import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:flutter_demo21/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFF9800),
          Color(0xFFFFCC80),
        ],
      )),
      child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.0),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  child: SizedBox(
                    height: 250,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset('assests/images/BG4.png'),
                    ],
                  ),
                ),
                Expanded(
                    child: SizedBox(
                  height: 1,
                )),
                Container(
                    child: AnimatedButton(
                  child: Text(
                    'Get Start',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  color: Colors.orange.shade500,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/homescreen');
                  },
                  enabled: true,
                  shadowDegree: ShadowDegree.light,
                  duration: 400,
                )),
                Container(
                  child: SizedBox(
                    height: 150,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
