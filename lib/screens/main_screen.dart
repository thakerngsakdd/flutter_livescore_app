import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('First Mobile App'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://www.google.co.th/url?sa=i&url=https%3A%2F%2Fngthai.com%2Fanimals%2F8500%2Fhidden-penguin-mega-colonies%2F&psig=AOvVaw16YzZ2u7U3MZnqpE-1H3hf&ust=1608605812789000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJitq-OJ3u0CFQAAAAAdAAAAABAD'),
          ),
        ));
  }
}
