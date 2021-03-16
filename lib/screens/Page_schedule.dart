import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PageSchedule extends StatefulWidget {
  @override
  _PageScheduleState createState() => _PageScheduleState();
}

class _PageScheduleState extends State<PageSchedule> {
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
                  'https://wpcdn.khobsanam.com/2020/04/20181118_142622-1.png'),
            ),
            title: Text('Thai League', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/thai');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/thai');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableTh');
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
                  'https://rightanglecreative.co.uk/wp-content/uploads/2020/04/Blog-Post-260816-Premier-League-Logo-Thumbnail.jpg'),
            ),
            title: Text('Premier League', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/Eng');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/Eng');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableEng');
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
                  'https://upload.wikimedia.org/wikipedia/th/thumb/d/df/Bundesliga_logo_%282017%29.svg/1200px-Bundesliga_logo_%282017%29.svg.png'),
            ),
            title: Text('Bundesliga', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/Ger');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/Ger');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableGer');
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
                  'https://football-industry.com/wp-content/uploads/2020/06/Serie_A_Logo_ab_2019.png'),
            ),
            title: Text('SERIE A', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/italy');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/italy');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableIta');
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
                  'https://img2.pngio.com/filelaliga-santandersvg-wikimedia-commons-la-liga-santander-png-1390_1190.png'),
            ),
            title: Text('LaLiga Santander', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/Spain');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/Spain');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableSpain');
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
                  'https://www.jleague.jp/img/news/2021/03/19494.jpg'),
            ),
            title: Text('J league', style: TextStyle(fontSize: 30)),
            onTap: () {
              Navigator.of(context).pushNamed('/Japan');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text('ตารางการแข่งขัน', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pushNamed('/Japan');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ตารางคะแนน', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/TableJapan');
            },
          ),
        ]),
      ),
    ]);
  }
}
