import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/ui/LandingPages.dart';

class AlbumContainerScreen extends StatelessWidget {
  AlbumContainerScreen();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
           leading: new IconButton(
               icon: new Icon(Icons.arrow_back, color: Colors.white),
               onPressed: () => Navigator.of(context).pop(),
              ),
        backgroundColor: Colors.green[900],
        title:  Align(
          alignment: Alignment.center,
                  child: Text("Pak.Dev",
                  style: TextStyle(
                     fontFamily: 'Courgette-Regular',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  
                  ),
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.more_vert,
              color: Colors.white,
              ), onPressed: () {})
        ],




      ),
      backgroundColor: Color(0xFFeaeaea),
      body: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: new ListView(
          padding: EdgeInsets.all(2.0),
          addRepaintBoundaries: true,
          shrinkWrap: true,
          children: <Widget>[
           Container(
             margin: EdgeInsets.all(5.0),
             child: Align(
               alignment: Alignment.center,
                            child: Text(
                 'Questions Tab',
                 style:TextStyle(
                    fontFamily: 'Courgette-Regular',
                  fontSize:20.0,
                  fontWeight:FontWeight.w500,
                  color: Colors.green[900],
                 )

               ),
             ),




           ),
           
            new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q1 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                                       TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g.)',
                      helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Required',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
              
               ),
                new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q2 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                                      TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g)',
                       helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Required',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
               ), 
                  new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q3 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                          TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g)',
                       helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Required',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
               ), 
                        new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q3 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                          TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g)',
                       helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Required',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
               ), 
                        new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q4 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                          TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g)',
                       helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Question',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
               ), 
                           new Card(
                elevation: 1.0,
                margin: EdgeInsets.all(3.0),
               
                   
                  
                   child:    Padding(
                     padding: EdgeInsets.all(5.0),
                                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                                new Text(
                                  "Q5 : What is about ?",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold),
                                ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: 
                          TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Tell us about yourself (e.g)',
                    
                       helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Question',
                    ),
                    maxLines: 3,
                  ),
                               
                            )
                          ],
                        ),
                   ),
               ), 


  
     Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
               
                 
                    child: Container(

                      child:Align(
                        alignment: Alignment.center,
                        child: Container(
       width: 100.0,
            child: RaisedButton(
        color: Color(0xFF003f16),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)
        
        ),
    
        onPressed: () {
           Navigator.of(context).pushNamed('');
            Scaffold
                .of(context)
                .showSnackBar(SnackBar(content: Text('Submit Successfully')));

        },
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          alignment: Alignment.center,
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Text('Submit',style: TextStyle(
            color: Colors.white,
            )),
        ),
    ),
     ),
                      ),
                    ),
                 
                ),




          ],
        ),
      ),
    );
  }
}
