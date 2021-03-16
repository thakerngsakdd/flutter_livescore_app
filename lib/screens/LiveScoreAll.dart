import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LiveScoreAll extends StatefulWidget {
  @override
  _LiveScoreAllState createState() => _LiveScoreAllState();
}

class _LiveScoreAllState extends State<LiveScoreAll> {
  var h2h;
  Future<Null> getUsers() async {
    try {
      final response = await http.get(
          'https://livescore-api.com/api-client/scores/live.json?key=0hEdNJbQh6nJ7sTb&secret=x6oK7wRtPYREmLXm3CARlLHCS4mZxfb5');

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        print(jsonResponse);
        setState(() {
          //matchth[index]['league']['name'];

          h2h = jsonResponse['data']['match'];
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSugq_u1HDkPF05atq7vAV2mV2rHM7kclxGTQ&usqp=CAU')))),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(),
                        Text(
                          '${h2h[index]['home_name']}'
                          '${(' ')}'
                          '${h2h[index]['score']}'
                          '${(' ')}'
                          '${h2h[index]['away_name']}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            '${h2h[index]['time']}'
                            '${' น.'}',
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
                            h2h[index]['status'],
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
            height: 500,
            width: MediaQuery.of(context).size.width * 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSugq_u1HDkPF05atq7vAV2mV2rHM7kclxGTQ&usqp=CAU'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${('Home  ')}'
                      '${h2h['score']}'
                      '${('  Away')}',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
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
                      '${h2h['time']}'
                      '${' น.'}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${('Home : ')}' '${h2h['home_name']}'
                  // '${(' ')}'
                  // '${h2h['score']}'
                  // '${(' ')}'
                  ,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${('Away : ')}' '${h2h['away_name']}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                // SizedBox(
                //   height: 10,
                // ),
                // Container(
                //   // width: 200,
                //   child: Align(
                //     alignment: Alignment.center,
                //     child: Text(
                //       h2h['date'],
                //       style: TextStyle(fontSize: 20, color: Colors.black),
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
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
