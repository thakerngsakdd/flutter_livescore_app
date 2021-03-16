import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  var params1;
  AddScreen(this.params1);
  @override
  _AddScreenState createState() => _AddScreenState(params1);
}

class _AddScreenState extends State<AddScreen> {
  var params2;
  _AddScreenState(this.params2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าเพิ่มข้อมูล'),
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          Text(
            'ค่าที่ถูกส่งมาคือ $params2',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
