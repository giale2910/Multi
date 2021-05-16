import 'package:multidisproject_2/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ControlPage extends StatefulWidget {

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                tabs: [
                  Tab(child: Text("Room 1")),
                  Tab(child: Text("Room 2")),
                  Tab(child: Text("Room 3")),
                  Tab(child: Text("Room 4")),
                ],
              ),
              title: Text('Control devices'),
              backgroundColor: Colors.orangeAccent,
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(50.0),
                  child: Table(
                    //defaultVerticalAlignment: Alignment.center,
                    //border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                  color: Colors.orangeAccent, // Set border color
                                  width: 3.0),   // Set border width
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)), // Set rounded corner radius
                              boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                          ),
                          child: Text("DEVICES",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                  color: Colors.orangeAccent, // Set border color
                                  width: 3.0),   // Set border width
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)), // Set rounded corner radius
                              boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                          ),
                          child: Text("STATUS",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                      ]),
                      TableRow(children: [

                        Container (
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text('Light 1',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),

                        ),
                      ],
                      ),
                      TableRow(children: [
                        Container (
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text('Light 2',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status1,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val1) {
                              setState(() {
                                status1 = val1;
                              });
                            },
                          ),

                        ),

                      ],
                      ),
                      TableRow(children: [
                        Container (
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text('Speaker',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status2,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val1) {
                              setState(() {
                                status2 = val1;
                              });
                            },
                          ),

                        ),
                      ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(50.0),
                  child: Table(
                    //defaultVerticalAlignment: Alignment.center,
                    //border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                  color: Colors.orangeAccent, // Set border color
                                  width: 3.0),   // Set border width
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)), // Set rounded corner radius
                              boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                          ),
                          child: Text("DEVICES",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                  color: Colors.orangeAccent, // Set border color
                                  width: 3.0),   // Set border width
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)), // Set rounded corner radius
                              boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                          ),
                          child: Text("STATUS",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                        ),
                      ]),
                      TableRow(children: [

                        Container (
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text('Light 1',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),

                        ),
                      ],
                      ),
                      TableRow(children: [
                        Container (
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text('Light 2',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status1,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val1) {
                              setState(() {
                                status1 = val1;
                              });
                            },
                          ),

                        ),

                      ],
                      ),
                      TableRow(children: [
                        Container (
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text('Speaker',style: TextStyle( fontSize: 26,))
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: FlutterSwitch(
                            width: 60.0,
                            height: 25.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status2,
                            borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: true,
                            onToggle: (val1) {
                              setState(() {
                                status2 = val1;
                              });
                            },
                          ),

                        ),
                      ],
                      )
                    ],
                  ),
                ),

                Container(),
                Container(),
              ],
            ),
          ),
        ),
      );
    }
}