import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/rendering.dart';
import'package:login_signup/ui/Dashboard.dart';
import 'package:login_signup/ui/AlbumContainerScreen.dart';


class LandingPages extends StatefulWidget {
  @override
  _LandingPagesState createState() => _LandingPagesState();
}

class _LandingPagesState extends State<LandingPages>
    with TickerProviderStateMixin {
  final controller = PageController();
  AnimationController _controller;
  AnimationController _controllers;
  AnimationController _animationController;
  AnimationController _animationControllers;
  Animation<Offset> _offsetAnimation, _mainAnimation, _offsetAnimatio;
  Animation<Offset> _delayAnimation;
  Animation<Offset> _delayAnimations;
  bool showComment = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controllers = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animationControllers = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _delayAnimation = Tween<Offset>(
      begin: Offset(.7, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    ));
    _delayAnimations = Tween<Offset>(
      begin: Offset(0, .25),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationControllers,
      curve: Curves.ease,
    ));
    Future.delayed(Duration(microseconds: 150), () {
      _animationController.forward(from: 0.0);
    });
    Future.delayed(Duration(microseconds: 150), () {
      _animationControllers.forward(from: 0.0);
    });
    _offsetAnimatio = Tween<Offset>(
      begin: Offset(2, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllers,
      curve: Curves.easeOut,
    ));
    _mainAnimation = Tween<Offset>(
      begin: Offset(10, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _controller.forward(from: 0.0);
    _controllers.forward(from: 0.0);
//    Future.delayed(Duration(seconds: 2),(){
////      _anothercontroller.forward(fr)
//    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final List<NumbersModel> numbers = [
    NumbersModel(number: 1, id: 1, image: 'assets/images/anas1.jpg'),
    NumbersModel(number: 2, id: 2, image: 'assets/images/mansoor1.jpg'),
    NumbersModel(number: 3, id: 3, image: 'assets/images/naeem1.jpg'),
    NumbersModel(number: 4, id: 4, image: 'assets/images/dsc1.jpg'),
    NumbersModel(number: 5, id: 5, image: 'assets/images/ssuet1.jpg')
  ];
  final List<String> _lest = [
    'Mohd Anas',
    'Mr Mansoor',
    'Mr Naeem',
    'DSC Google',
    'SSUET Uni',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SlideTransition(
                    position: _offsetAnimation,
                    child: Text(
                      'Pak.Dev',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green[900],
                          fontFamily: 'Courgette-Regular',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: SlideTransition(
                    position: _offsetAnimatio,
                    child: Container(

                      child:Align(
                        alignment: Alignment.center,
                        child: Container(
       width: 200.0,
            child: RaisedButton(
        color: Color(0xFF003f16),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)
        
        ),
    
        onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlbumContainerScreen()));
            Scaffold
                .of(context)
                .showSnackBar(SnackBar(content: Text('')));

        },
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          alignment: Alignment.center,
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Text('Hire a Top 1% Free Lancers',style: TextStyle(
             fontFamily: 'Courgette-Regular',
            color: Colors.white,
            )),
        ),
    ),
     ),
                      ),
                    ),
                  ),
                ),
//SizedBox(height: 170,),
                SlideTransition(
                  position: _offsetAnimatio,
                  child: Container(
                    //padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 40.0),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    height: MediaQuery.of(context).size.height / 5,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numbers.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                             Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Dashboard(numbers[index].image);
                              }));
                            },
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.7,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: AssetImage(numbers[index].image),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.7,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
//
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.white10,
                                          Colors.green[900]
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment(0.8, 0.9)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, bottom: 6),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      _lest[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'GilroySemiBold',
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                SlideTransition(
                  position: _delayAnimation,
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontFamily: 'GilroySemiBold',
                    ),
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    indicatorColor: Colors.green[900],
                    indicatorWeight: 4.5,
                    indicatorPadding: EdgeInsets.only(right: 70, left: 20),
                    tabs: <Widget>[
                      Tab(
                        text: ('News feed'),
                      ),
                       Tab(
                        text: (''),
                      ),
                       Tab(
                        text: (''),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SlideTransition(
                  position: _delayAnimations,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 42.0),
                        child: Row(
                          children: <Widget>[
                            // CircularProfileAvatar(
                            //   '',
                            //   child: Image.asset(
                            //     'assets/images/5.jpg',
                            //     fit: BoxFit.cover,
                            //   ),
                            //   borderColor: Colors.white,
                            //   borderWidth: 0,
                            //   elevation: 2,
                            //   radius: 18,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                      text: 'Our team',
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 14,
                                        fontFamily: 'GilroySemiBold',
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'participate in Flutter interact',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'GilroySemiBold',
                                          ),
                                        )
                                      ]),
                                ),
                                Text(
                                  ' Recieve Shields',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'GilroySemiBold',
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 38.0, left: 38, top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(children: <Widget>[
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width * .8,
//                color: Colors.blue,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: new AssetImage("assets/images/flutter1.jpg"),
                                fit: BoxFit.fill,
                              )),
                            ),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width * .8,
//                color: Colors.blue,
                              decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [Colors.white10, Colors.green[900]],
                                    begin: Alignment.centerRight,
                                    end: Alignment(1.0, 1.0)),
                              ),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '   ',
                              style: TextStyle(fontSize: 13),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  // showComment = !showComment;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                // child: Icon(
                                //   Icons.comment,
                                //   size: 16
                                //   ,
                                // ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  showComment = !showComment;
                                });
                              },
                              child: Text(
                            ' ',
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ),
                      showComment
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  top: 18.0, right: 30, left: 30),
                              child: Container(
                                height: 40,
                                child: Material(
                                  elevation: 0,
                                  shadowColor: Colors.white,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Give your Review ",
                                    hintStyle: TextStyle(
                                      fontFamily: 'GilroySemiBold',
                                    ),
                                    suffixIcon: Icon(
                                      Icons.create,
                                      color: Colors.green[900],
                                    ),

//                            border: OutlineInputBorder(
//                                borderSide: BorderSide(
//                                  color: Colors.transparent,
//                                  width: 10,
//                                ),
//                                borderRadius: BorderRadius.circular(5),
//                                gapPadding: 10),

                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 10,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                        gapPadding: 10),
                                  )),
                                ),
                              ),
                            )
                          : SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 5),
                        child: Row(
                          children: <Widget>[
                            // CircularProfileAvatar(
                            //   '',
                            //   child: Image.asset(
                            //     'assets/images/8.jpg',
                            //     fit: BoxFit.fitHeight,
                            //   ),
                            //   borderColor: Colors.white,
                            //   borderWidth: 0,
                            //   elevation: 2,
                            //   radius: 20,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                      text: 'DSC SSUET',
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontFamily: 'GilroySemiBold',
                                          fontSize: 12),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Won flutter hackathon',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'GilroySemiBold',
                                              fontSize: 10),
                                        ),
                                        TextSpan(
                                          text: ' On 20th Feb.',
                                          style: TextStyle(
                                              color: Colors.green[900],
                                              fontFamily: 'GilroySemiBold',
                                              fontSize: 11),
                                        )
                                      ]),
                                ),
                                Text(
                                  '  Winning Moment',
                                  style: TextStyle( fontFamily: 'GilroySemiBold',
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 38.0, left: 38, top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width * .8,
//                color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: new AssetImage("assets/images/2.jpeg"),
                                  fit: BoxFit.fill,
                                )),
                              ),
                              Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width * .8,
//                color: Colors.blue,
                                decoration: BoxDecoration(
                                  gradient: new LinearGradient(
                                      colors: [
                                        Colors.white10,
                                        Colors.green[900]
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment(1.0, 1.0)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NumbersModel {
  int number;
  int id;
  String image;

  NumbersModel({this.number, this.id, this.image});
}