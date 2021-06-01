import 'package:multidisproject_2/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectronicsListModels {
  int id;
  String name;
  String image;
  bool status;


  ElectronicsListModels({
    required this.id,
    required this.name,
    required this.image,
    required this.status,
  });
}
List<ElectronicsListModels> electronicsList_1 = [
    ElectronicsListModels(
      id: 1,
      name: 'LED 1',
      image: 'assets/lamp_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 2,
      name: 'LED 2',
      image: 'assets/lamp_on.png',
      status: false,
    ),
    ElectronicsListModels(
      id: 3,
      name: 'BUZZER 1',
      image: 'assets/bell_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 4,
      name: 'BUZZER 2',
      image: 'assets/bell_on.png',
      status: true,
    ),

  ];
  List<ElectronicsListModels> electronicsList_2 = [
    ElectronicsListModels(
      id: 1,
      name: 'LED 1',
      image: 'assets/lamp_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 2,
      name: 'LED 2',
      image: 'assets/lamp_on.png',
      status: false,
    ),
    ElectronicsListModels(
      id: 3,
      name: 'BUZZER 1',
      image: 'assets/bell_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 4,
      name: 'BUZZER 2',
      image: 'assets/bell_on.png',
      status: true,
    ),

  ];
  List<ElectronicsListModels> electronicsList_3 = [
    ElectronicsListModels(
      id: 1,
      name: 'LED 1',
      image: 'assets/lamp_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 2,
      name: 'LED 2',
      image: 'assets/lamp_on.png',
      status: false,
    ),
    ElectronicsListModels(
      id: 3,
      name: 'BUZZER 1',
      image: 'assets/bell_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 4,
      name: 'BUZZER 2',
      image: 'assets/bell_on.png',
      status: true,
    ),

  ];
  List<ElectronicsListModels> electronicsList_4 = [
    ElectronicsListModels(
      id: 1,
      name: 'LED 1',
      image: 'assets/lamp_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 2,
      name: 'LED 2',
      image: 'assets/lamp_on.png',
      status: false,
    ),
    ElectronicsListModels(
      id: 3,
      name: 'BUZZER 1',
      image: 'assets/bell_on.png',
      status: true,
    ),
    ElectronicsListModels(
      id: 4,
      name: 'BUZZER 2',
      image: 'assets/bell_on.png',
      status: true,
    ),

  ];
class ControlPage extends StatefulWidget {

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;

  bool buzzer1status = false;
  bool light1status = false;

  final databaseReferenceBuzzer = FirebaseFirestore.instance.collection('room1_output').doc('sound_buzzer');
  final databaseReferenceLight = FirebaseFirestore.instance.collection('room1_output').doc('light_relay_control');

  loginSection(context, room) {
    var electronicsList;

    switch(room) { 
      case 1: { 
        electronicsList = electronicsList_1;
     
       } 
      break; 
      case 2: { 
        electronicsList = electronicsList_2;
        
       } 
      break; 
      case 3: { 
        electronicsList = electronicsList_3;
       
       } 
      break; 
      case 4: { 
        electronicsList = electronicsList_4;
       
       } 
      break; 
     
   } 

 
    return Container(
     child: Padding(
          padding: EdgeInsets.only(left: 20, top: 80, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:150),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  itemCount: electronicsList.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                      var nameDoc;
                      switch(index) { 
                        case 0: { 
                          // nameDoc = 'light_relay_control';
                           switch(room) { 
                              case 1: { 
                                nameDoc = 'light_relay_control';
                            
                              } 
                              break; 
                              case 2: { 
                                // nameDoc = 'sound_buzzer';
                                
                              } 
                              break; 
                              case 3: { 
                              //  nameDoc = 'sound_buzzer';
                              
                              } 
                              break; 
                              case 4: { 
                                // nameDoc = 'sound_buzzer'; 
                              } 
                              break;   
                          } 
                        } 
                        break; 

                        case 1: { 
                          nameDoc = 'light_relay_control';
                        } 
                        break; 
                        case 2: { 
                        
                           nameDoc = 'sound_buzzer';
                        } 
                        break; 
                        case 3: { 
                         
                           nameDoc = 'sound_buzzer';
                        } 
                        break; 
                      
                    } 
                  return Container(
                    padding: EdgeInsets.all(20),
                    // height: index.isEven ? 200 : 240,
                    height: index.isEven ? 200 : 200,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 10, offset: Offset(0, 10), color: Color(0xfff1f0f2))
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: electronicsList[index].status
                            // ? [Color(0xff669df4), Color(0xff4e80f3)]
                            ? [Colors.cyan.shade100, Colors.cyan.shade50]
                            : [Colors.white, Colors.white]),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          electronicsList[index].name,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF0D1333),
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                        
                        Text(
                          '${electronicsList[index].id} Courses',
                          style: TextStyle(
                            color: Color(0xFF0D1333).withOpacity(.5),
                          ),
                          
                        ),
                        SizedBox(height:5),
                        Image.asset(electronicsList[index].image, width: 65,height: 65,), 
                    
                        Switch(
                            value: electronicsList[index].status,
                            activeColor: Color(0xff457be4),
                            onChanged: (bool state) {
                              state
                                  ?  FirebaseFirestore.instance.collection('room1_output').doc(nameDoc)
                                      .update({'data': "1"})
                                  :  FirebaseFirestore.instance.collection('room1_output').doc(nameDoc)
                                      .update({'data': "0"}) ;
                              state ? electronicsList[index].status = true :electronicsList[index].status = false;
                          }    
                          ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ), 
  );
}


  @override
    Widget build(BuildContext context) {
    var buzzer1 ="0"  ;
    var light1 ="0" ;
  return  StreamBuilder(
    stream: FirebaseFirestore.instance.collection("room1_output").snapshots(includeMetadataChanges: true),
    builder: (BuildContext context,
              AsyncSnapshot snapshot) {    
                if (snapshot.connectionState == ConnectionState.active){
                   print(snapshot.data.docs[0].data()['data']);
                    buzzer1 = snapshot.data.docs[1].data()['data'];
                    light1 = snapshot.data.docs[0].data()['data'];
                    if (buzzer1 =="0"){electronicsList_1[2].status  = false;}
                    else{electronicsList_1[2].status =true;}

                    if (light1 == "0"){electronicsList_1[0].status  = false;}
                    else{electronicsList_1[0].status =true;}
                }
      return new MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                // indicatorColor: Colors.lime,
                labelColor: Colors.black,
                // unselectedLabelColor: Colors.yellow,
                tabs: [
                  new Tab(child: Text('Room 1')),
                  new Tab(child: Text('Room 2')),//icon: new Icon(Icons.directions_transit)
                  new Tab(child: Text('Room 3')),
                  new Tab(child: Text('Room 4')),
                ],
              ),
            ],
          ),
            ),
            body: TabBarView(
              children: [
                Stack(
                  children: <Widget>[
                      mainAlbumImage(),
                      loginSection(context,1)
                  ]       
                ),
                 Stack(
                  children: <Widget>[
                      mainAlbumImage(),
                      loginSection(context,2)
                  ]       
                ),
                 Stack(
                  children: <Widget>[
                      mainAlbumImage(),
                      loginSection(context,3)
                  ]       
                ),
                 Stack(
                  children: <Widget>[
                      mainAlbumImage(),
                      loginSection(context,4)
                  ]       
                ),
            
              ],
            ),
          ),
        ),
      );
    });
    }
}



mainAlbumImage() {
  return Container(
    width: double.infinity,
    height: 300,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      border: Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      color: Colors.cyan,
      image: DecorationImage(
        image:
            AssetImage( "assets/bk1.jpeg"),
        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.0), BlendMode.luminosity),
        fit: BoxFit.cover,
      ),
    ),
    padding: EdgeInsets.only(
      left: 30,
      top: 50,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset("assets/idea.png", width: 75,height:75), 
        SizedBox(height: 10.0),
        Text('Room 1',
        style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Stack(
        children: [
          Text(
            'DEVICES',
            style: TextStyle(
              fontSize: 40,
                 fontWeight: FontWeight.w900,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.black,
              
            ),
          
          ),
          Text(
            'DEVICES',
            style: TextStyle(
              fontSize: 40,
              color: Colors.yellow.shade600,
               fontWeight: FontWeight.w900,
            ),
          ),
        ]
      ),
      ],
    ),
  );
}








