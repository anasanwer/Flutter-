import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_signup/ui/LandingPages.dart';
import 'package:login_signup/ui/VideoContainerScreen.dart';
import'package:login_signup/ui/ProfilePage.dart';




class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> viewContainer = [
    LandingPages(),
    VideoContainerScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title:  Align(
          alignment: Alignment.center,
                  child: Text("Home",
                  style: TextStyle(
                    fontFamily:'Courgette-Regular',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  
                  ),
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search,
              color: Colors.white,
              
              ), onPressed: () {}),
          new IconButton(
              icon: new Icon(Icons.more_vert,
              color: Colors.white,
              ), onPressed: () {})
        ],




      ),
   
drawer: new Drawer(
  
          child: new ListView(
        children: <Widget>[

          new Container(child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: new Image.asset('assets/images/logo.png'),
          ),color: Color(0xFFf0f0f0),)

          ,
          new ListTile(
            leading: new Icon(Icons.perm_identity),
            title: new Text("Profile"),
            trailing: new Text("96",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
             Navigator.push(context, new MaterialPageRoute(
  builder: (context) =>
      ProfilePage()),
  );
            },
          ),
           new ListTile(
            leading: new Icon(Icons.insert_chart),
            title: new Text("My stats"),
            trailing: new Text("96",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
             
            },
          ),
           new ListTile(
            leading: new Icon(Icons.pie_chart),
            title: new Text("Reports"),
            trailing: new Text("96",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
             
            },
          ),
          new ListTile(
            leading: new Icon(Icons.gavel),
            title: new Text("Disputes"),
            trailing: new Text("58",style: TextStyle(fontWeight: FontWeight.bold),),

            onTap: () {
              Navigator.pop(context);
              
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            trailing: new Text("56",style: TextStyle(fontWeight: FontWeight.bold),),

            title: new Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            
            },
          ),
          new ListTile(
            leading: new Icon(Icons.help),
            trailing: new Text("56",style: TextStyle(fontWeight: FontWeight.bold),),

            title: new Text("Help & Support"),
            onTap: () {
              Navigator.pop(context);
            
            },
          ),
             new ListTile(
            leading: new Icon(Icons.people_outline),
            trailing: new Text("56",style: TextStyle(fontWeight: FontWeight.bold),),

            title: new Text("Community & forums"),
            onTap: () {
              Navigator.pop(context);
            
            },
          ),

        ],
      )),


     body:
      viewContainer[currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
                  onTap: onTabTapped, // new
          currentIndex: currentIndex,
          fixedColor: Colors.green[900],
          items: [
            BottomNavigationBarItem(
          icon:new Icon(Icons.home,
          color: Colors.green[900],
          
          ),
          title: Text("Home",
           style: TextStyle(
            fontFamily:'Courgette-Regular',
            color: Colors.green[900],
          ),
          ),
        ),
        BottomNavigationBarItem(
          icon:new Icon(Icons.group,
          color: Colors.green[900],
          ),
          title: Text("About us",
          style: TextStyle(
            fontFamily:'Courgette-Regular',
            color: Colors.green[900],
          ),
          ),
        ),
         
      ]),
    );


  }
}



