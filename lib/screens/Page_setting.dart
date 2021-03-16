import 'package:flutter/material.dart';

class PageSetting extends StatefulWidget {
  @override
  _PageSettingState createState() => _PageSettingState();
}

class _PageSettingState extends State<PageSetting> {
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
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/LiveTh');
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/H2hEng');
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
              Navigator.of(context).pushNamed('/LiveGer');
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/LiveGer');
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
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/LiveGer');
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/LaLiga_SmartBank.svg/1200px-LaLiga_SmartBank.svg.png'),
            ),
            title: Text('LaLiga Santander', style: TextStyle(fontSize: 30)),
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/LiveSpain');
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
            title: Text('J.league', style: TextStyle(fontSize: 30)),
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('LiveScore', style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.of(context).pushNamed('/LiveJapan');
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
