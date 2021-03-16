import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PageNewsJa extends StatefulWidget {
  @override
  _PageNewsJaState createState() => _PageNewsJaState();
}

class _PageNewsJaState extends State<PageNewsJa> {
  var users;
  Future<Null> getUsers() async {
    final response = await http.get(
        'http://newsapi.org/v2/top-headlines?country=jp&category=sports&apiKey=0825ae282b794daab385dd9137e5b9e2');

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      setState(() {
        users = jsonResponse['articles'];
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
              showDialogFunc(context, users[index]);
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
                              image:
                                  NetworkImage(users[index]['urlToImage'])))),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          users[index]['source']['name'],
                          style: TextStyle(
                            fontSize: 25,
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
                            users[index]['title'],
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
        itemCount: users != null ? users.length : 0,
      ),
    );
  }
}

showDialogFunc(context, users) {
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
            height: 670,
            width: MediaQuery.of(context).size.width * 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(users['urlToImage']),
                ),
                Divider(),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  users['title'],
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
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${('Description : ')}' '${users['description']}',
                      style: TextStyle(fontSize: 18, color: Colors.black),
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
                      '${('Update : ')}' '${users['publishedAt']}',
                      maxLines: 3,
                      style: TextStyle(fontSize: 18, color: Colors.black),
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
                      users['url'],
                      maxLines: 3,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // ListTile(
                //   leading: Icon(
                //     Icons.favorite,
                //     color: Colors.red,
                //     size: 30,
                //   ),
                // )
              ],
            ),
          ),
        ),
      );
    },
  );
}
