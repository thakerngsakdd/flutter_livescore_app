import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        child: Column(children: <Widget>[
          Divider(),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://www.gem-thai.com/wp-content/uploads/2019/03/thailand-flag.jpg'),
            ),
            title: Text('Thai Sports News', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/th');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books_outlined),
            title: Text('อ่านข่าว', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/th');
            },
          ),
        ]),
      ),
      Card(
        child: Column(children: <Widget>[
          Divider(),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgyj8JdTK8-7gdGBx3-LxummKEGOSzU5Cnrg&usqp=CAU'),
            ),
            title: Text('United Kingdom Sports News',
                style: TextStyle(fontSize: 25)),
            onTap: () {
              Navigator.of(context).pushNamed('/EngNews');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books_outlined),
            title: Text('อ่านข่าว', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/EngNews');
            },
          ),
        ]),
      ),
      Card(
        child: Column(children: <Widget>[
          Divider(),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Japan_%281870%E2%80%931999%29.svg/220px-Flag_of_Japan_%281870%E2%80%931999%29.svg.png'),
            ),
            title: Text('Japan Sports News', style: TextStyle(fontSize: 25)),
            onTap: () {
              Navigator.of(context).pushNamed('/JaNews');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books_outlined),
            title: Text('อ่านข่าว', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/JaNews');
            },
          ),
        ]),
      ),
    ]);
  }
}
