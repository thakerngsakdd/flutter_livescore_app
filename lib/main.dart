import 'package:flutter/material.dart';
import 'package:flutter_demo21/screens/Login.dart';
import 'package:flutter_demo21/screens/LIveSpain.dart';
import 'package:flutter_demo21/screens/LiveGer.dart';
import 'package:flutter_demo21/screens/LiveIta.dart';
import 'package:flutter_demo21/screens/LiveJapan.dart';
import 'package:flutter_demo21/screens/LiveTh.dart';
import 'package:flutter_demo21/screens/Page_Ger.dart';
import 'package:flutter_demo21/screens/Page_News.dart';
import 'package:flutter_demo21/screens/Page_NewsEng.dart';
import 'package:flutter_demo21/screens/Page_NewsJa.dart';
import 'package:flutter_demo21/screens/Page_Serie.dart';
import 'package:flutter_demo21/screens/Page_Spain.dart';
import 'package:flutter_demo21/screens/Page_Thai.dart';
import 'package:flutter_demo21/screens/Page_home.dart';
import 'package:flutter_demo21/screens/Page_japan.dart';
import 'package:flutter_demo21/screens/TableGer.dart';
import 'package:flutter_demo21/screens/TableIta.dart';
import 'package:flutter_demo21/screens/TableJapan.dart';
import 'package:flutter_demo21/screens/TableSpain.dart';
import 'package:flutter_demo21/screens/TableTh.dart';
import 'package:flutter_demo21/screens/Login.dart';
import 'package:flutter_demo21/screens/add_screen.dart';
import 'package:flutter_demo21/screens/Page_schedule.dart';
import 'package:flutter_demo21/screens/Page_Eng.dart';
import 'package:flutter_demo21/screens/LiveEng.dart';
import 'package:flutter_demo21/screens/TableEng.dart';
import 'package:flutter_demo21/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Supermarket',
          scaffoldBackgroundColor: Colors.orange.shade200,
          primarySwatch: Colors.orange,
          accentColor: Colors.yellow,
        ),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/add': (BuildContext context) => AddScreen('Hello 2021'),
          '/detail': (BuildContext context) => PageSchedule(),
          '/home': (BuildContext context) => PageHome(),
          '/homescreen': (BuildContext context) => HomeScreen(),
          '/thai': (BuildContext context) => PageThai(),
          '/Eng': (BuildContext context) => PageEng(),
          '/Ger': (BuildContext context) => PageGer(),
          '/italy': (BuildContext context) => PageSerie(),
          '/th': (BuildContext context) => PageNews(),
          '/EngNews': (BuildContext context) => PageNewsEng(),
          '/JaNews': (BuildContext context) => PageNewsJa(),
          '/H2hEng': (BuildContext context) => H2hEng(),
          '/TableEng': (BuildContext context) => TableEng(),
          '/Spain': (BuildContext context) => PageSpain(),
          '/Japan': (BuildContext context) => PageJapan(),
          '/LiveTh': (BuildContext context) => LiveTh(),
          '/LiveGer': (BuildContext context) => LiveIta(),
          '/LiveIta': (BuildContext context) => LiveGer(),
          '/LiveSpain': (BuildContext context) => LiveSpain(),
          '/LiveJapan': (BuildContext context) => LiveJapan(),
          '/TableTh': (BuildContext context) => TableTh(),
          '/TableGer': (BuildContext context) => TableGer(),
          '/TableIta': (BuildContext context) => TableIta(),
          '/TableSpain': (BuildContext context) => TableSpain(),
          '/TableJapan': (BuildContext context) => TableJapan(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
