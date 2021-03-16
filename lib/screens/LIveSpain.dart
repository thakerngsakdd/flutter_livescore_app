import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LiveSpain extends StatefulWidget {
  @override
  _LiveSpainState createState() => _LiveSpainState();
}

class _LiveSpainState extends State<LiveSpain> {
  var h2h;
  Future<Null> getUsers() async {
    try {
      final response = await http.get(
          'https://livescore-api.com/api-client/scores/live.json?competition_id=3&key=0hEdNJbQh6nJ7sTb&secret=x6oK7wRtPYREmLXm3CARlLHCS4mZxfb5');

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
            onTap: () {},
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
                                  'https://img2.pngio.com/filelaliga-santandersvg-wikimedia-commons-la-liga-santander-png-1390_1190.png')))),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                          height: 20,
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

// showDialogFunc(context, matchth) {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return Center(
//         child: Material(
//           type: MaterialType.transparency,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//             ),
//             padding: EdgeInsets.all(15),
//             height: 700,
//             width: MediaQuery.of(context).size.width * 20,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(5),
//                   child: Image.network(
//                       'https://rightanglecreative.co.uk/wp-content/uploads/2020/04/Blog-Post-260816-Premier-League-Logo-Thumbnail.jpg'),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   matchth['time'],
//                   style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   // width: 200,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       '${'Stadium : '}' '${matchth['location']}',
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   // width: 200,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       matchth['date'],
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Divider(),
//                 Divider(),
//                 Divider(),
//                 Divider(),
//                 ListTile(
//                   title: Text(
//                     'LineUp',
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                     textAlign: TextAlign.center,
//                   ),
//                   onTap: () {
//                     Navigator.of(context).pushNamed('/Eng');
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
