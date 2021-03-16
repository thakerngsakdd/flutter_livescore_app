import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PageSerie extends StatefulWidget {
  @override
  _PageSerieState createState() => _PageSerieState();
}

class _PageSerieState extends State<PageSerie> {
  var matchth;
  Future<Null> getUsers() async {
    final response = await http.get(
        'https://livescore-api.com/api-client/fixtures/matches.json?competition_id=4&key=0hEdNJbQh6nJ7sTb&secret=x6oK7wRtPYREmLXm3CARlLHCS4mZxfb5');

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      setState(() {
        matchth = jsonResponse['data']['fixtures'];
      });
    } else {
      print("Data you lose");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(context, matchth[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                      width: 120,
                      height: 120,
                      //child: Image.asset(users[index]['urlToImage']),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://football-industry.com/wp-content/uploads/2020/06/Serie_A_Logo_ab_2019.png')))),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MatchDay',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            matchth[index]['time'],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            '${'Date :'} ${matchth[index]['date']}',
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Container(
                        //   width: width,
                        //   child: Text(
                        //     '${'Stadium :'} ${matchth[index]['location']}',
                        //     maxLines: 3,
                        //     style: TextStyle(
                        //         fontSize: 20, color: Colors.grey[500]),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Container(
                        //   width: width,
                        //   child: Text(
                        //     matchth[index]['league']['name'],
                        //     maxLines: 3,
                        //     style: TextStyle(
                        //         fontSize: 20, color: Colors.grey[500]),
                        //   ),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            '${'Home :'} ${matchth[index]['home_name']}',
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            '${'Away :'} ${matchth[index]['away_name']}',
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: matchth != null ? matchth.length : 0,
      ),
    );
  }
}

showDialogFunc(context, matchth) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 650,
            width: MediaQuery.of(context).size.width * 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                      'https://football-industry.com/wp-content/uploads/2020/06/Serie_A_Logo_ab_2019.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  matchth['time'],
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${'Stadium : '}' '${matchth['location']}',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      matchth['date'],
                      style: TextStyle(fontSize: 30, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // Divider(),
                // Divider(),
                // Divider(),
                // Divider(),
                // ListTile(
                //   title: Text(
                //     'LineUp',
                //     style: TextStyle(fontSize: 20, color: Colors.black),
                //     textAlign: TextAlign.center,
                //   ),
                //   onTap: () {
                //     Navigator.of(context).pushNamed('/H2hEng');
                //   },
                // ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
