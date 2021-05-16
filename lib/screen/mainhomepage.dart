import 'package:flutter/material.dart';
import 'package:multidisproject_2/screen/loginpage.dart';
import 'package:multidisproject_2/screen/homepage.dart';

class MainHomePage extends StatefulWidget {

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.orangeAccent,
        title: Text ("Homepage"),
      ),
      body: Center (
        // child: MaterialButton (
        //   onPressed: ()  async {
        //     await FirebaseAuth.instance.signOut();
        //   },
        //   child: Text("Sign out"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row (
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.computer,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('ROOM 1'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Light Intensity', textAlign: TextAlign.center),
                        ],
                      ),
                    ),

                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Noise', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.computer,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('ROOM 2'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Light Intensity', textAlign: TextAlign.center),
                        ],
                      ),
                    ),

                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Noise', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.computer,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('ROOM 3'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Light Intensity', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: Colors.green,
                            size: 80.0,
                          ),
                          Text('Noise', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
