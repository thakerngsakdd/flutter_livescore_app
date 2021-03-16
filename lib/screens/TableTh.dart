import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class TableTh extends StatefulWidget {
  @override
  _TableThState createState() => _TableThState();
}

class _TableThState extends State<TableTh> {
  var h2h;
  Future<Null> getUsers() async {
    try {
      final response = await http.get(
          'https://livescore-api.com/api-client/leagues/table.json?competition_id=30&key=0hEdNJbQh6nJ7sTb&secret=x6oK7wRtPYREmLXm3CARlLHCS4mZxfb5');

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        print(jsonResponse);
        setState(() {
          //matchth[index]['league']['name'];

          h2h = jsonResponse['data']['table'];
          // print("debug");
          // print("xxxxxxxxxxx" + matchth);
          // print("debug");
          print(h2h.length);
        });
      } else {
        print("Data you lose");
      }
    } catch (e) {
      e.toString();
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
              showDialogFunc(context, h2h[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                      width: 60,
                      height: 60,
                      //child: Image.asset(users[index]['urlToImage']),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://wpcdn.khobsanam.com/2020/04/20181118_142622-1.png')))),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(),
                        Text(
                          '${h2h[index]['name']}',
                          // '${(' ')}'
                          // '${h2h[index]['score']}'
                          // '${(' ')}'
                          // '${h2h[index]['away_name']}',
                          style: TextStyle(
                            fontSize: 20,
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
                            '${'Rank : '}' '${h2h[index]['rank']}',
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
                        //     '${'Date :'} ${matchth[index]['date']}',
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
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Container(
                        //   width: width,
                        //   child: Text(
                        //     h2h[index]['home_name'],
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
                        //     h2h[index]['away_name'],
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
                            '${'points : '}' '${h2h[index]['points']}',
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
                        //     '${'Away :'}' '${h2h[index]['overall_form']}',
                        //     maxLines: 3,
                        //     style: TextStyle(
                        //         fontSize: 20, color: Colors.grey[500]),
                        //   ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: h2h != null ? h2h.length : 0,
      ),
    );
  }
}

showDialogFunc(context, h2h) {
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
            height: 700,
            width: MediaQuery.of(context).size.width * 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                      'https://wpcdn.khobsanam.com/2020/04/20181118_142622-1.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  h2h['name'],
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
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${'Matches : '}' '${h2h['matches']}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                      '${'Lost : '}' '${h2h['lost']}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                      '${'Drawn : '}' '${h2h['drawn']}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                      '${'Won : '}' '${h2h['won']}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                //     Navigator.of(context).pushNamed('/Eng');
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
