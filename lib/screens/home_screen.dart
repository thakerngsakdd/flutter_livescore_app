import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_demo21/screens/LiveScoreAll.dart';

import 'package:flutter_demo21/screens/Page_home.dart';
import 'package:flutter_demo21/screens/Page_schedule.dart';
import 'package:flutter_demo21/screens/Page_setting.dart';
import 'package:flutter_demo21/screens/add_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextStyle myStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  TextStyle myStyle2 = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  TextStyle myStyle3 = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
  Widget floatingAction =
      FloatingActionButton(onPressed: () {}, child: Icon(Icons.add));

  int currentIndex = 0;
  List pages = [PageHome(), PageSchedule(), LiveScoreAll()];

  @override
  Widget build(BuildContext context) {
    Widget floatingAction = FloatingActionButton(
      onPressed: () async {
        var response = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddScreen('Hello Nisit Ku')));
        print(response['name']);
      },
      child: Icon(Icons.wb_incandescent),
    );
    Widget appBar = AppBar(
      title: Text(
        'Sports News',
        style: myStyle3,
      ),
    );
    Widget bottomNavBar = BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.textsms_sharp),
              title: Text('NEWS', style: myStyle2)),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule_outlined),
              title: Text('SCHEDULE', style: myStyle2)),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              title: Text('LIVESCORE', style: myStyle2)),
        ]);

    Widget myDrawer = Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white70,
              //child: Text(
              // '',
              //   style: TextStyle(
              //    color: Colors.pink,
              //    fontWeight: FontWeight.bold,
              //    fontSize: 40.0),
              //    ),
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/80.jpg'),
            ),
            accountName: Text('Chaloemchai Wongphansuea',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white)),
            accountEmail: Text(
              'Chaloemchai.wo@ku.th',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/09/03/09/25/orange-3650747_960_720.png'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text('หน้าเมนูการใช้งาน'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Contact',
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text('Contact'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'ออกจากแอพพลิเคชั้น',
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text('ออกจากการใช้งาน'),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: appBar,
      // drawer: myDrawer,
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
