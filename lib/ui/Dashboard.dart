import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  String image;

  Dashboard(this.image);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  final controller = PageController();
  AnimationController _controller;
  AnimationController _controllers;
  AnimationController _controllerss;
  AnimationController _controllersss;
  AnimationController _animationController;
  Animation<Offset> _offsetAnimation;
  Animation<Offset> _offsetAnimations;
  Animation<Offset> _offsetAnimationss;
  Animation<Offset> _offsetAnimationsss;
  Animation<Offset> _delayAnimation;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic);
    _controller.forward();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _controllers = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _controllerss = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _controllersss = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _offsetAnimations = Tween<Offset>(
      begin: Offset(-1, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllers,
      curve: Curves.easeOut,
    ));
    _offsetAnimationss = Tween<Offset>(
      begin: Offset(1, 0),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerss,
      curve: Curves.easeOut,
    ));
    _offsetAnimationsss = Tween<Offset>(
      begin: Offset(0, -3),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllersss,
      curve: Curves.easeOut,
    ));
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _controllers.forward(from: 0.0);
    _controllerss.forward(from: 0.0);
    _controllersss.forward(from: 0.0);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    _delayAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: const Offset(0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    ));
    _controller.forward(from: 0.0);

    Future.delayed(Duration(microseconds: 20), () {
      _animationController.forward(from: 0.0);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final List<NumbersModel> numbers = [
    NumbersModel(number: 1, id: 1),
    NumbersModel(number: 2, id: 2),
    NumbersModel(number: 3, id: 3),
    NumbersModel(number: 4, id: 4),
    NumbersModel(number: 5, id: 5),

  ];

  final List<String> _lest = [
    'OUR TEAM',
    'DSC SSUET',
    'DSC SSUET',
    'DSC SSUET',
    'DSC SSUET',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/anas1.jpg'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.white.withOpacity(0.20), BlendMode.dstATop),
              )),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 30),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            print("ON TAp");
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/logo.png',scale: 1.5,

                          ),
                        ),
                        SizedBox(
                          width: 245,
                        ),
                  
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/final3.png',
                          scale: 18,
                        
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 55),
                    child: Row(
                      children: <Widget>[
                        FadeTransition(
                          opacity: animation,
                          child: Column(
                            children: <Widget>[
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'GilroySemiBold',
                                ),
                              ),
                              Text(
                                'Ratings',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'GilroySemiBold',
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SlideTransition(
                          position: _offsetAnimationsss,
                        child:  CircleAvatar(
           radius: 50.0,
           backgroundImage: AssetImage('assets/images/anas1.jpg')

          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        FadeTransition(
                          opacity: animation,
                          child: Column(
                            children: <Widget>[
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'GilroySemiBold',
                                ),
                              ),
                              Text(
                                'Mobile ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'GilroySemiBold',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 16),
                    child: Text(
                      'Muhammad Anas',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[800],
                        fontFamily: 'GilroySemiBold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'Consultant at',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontFamily: 'GilroySemiBold',
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Skill Orbit',
                                  style: TextStyle(
                                      color: Colors.green[900],
                                      fontSize: 9,
                                      fontFamily:'Courgette-Regular',
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 9,
                        ),
                        Text(
                          'Karachi,Pakistan',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 9.0,
                             fontFamily:'Courgette-Regular',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      elevation: 40,
                      child: Container(
                     
                        height: MediaQuery.of(context).size.height * 0.55,              
                        width: MediaQuery.of(context).size.width * 1.0,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 170),
                                child: Text(
                                  'About Muhammad Anas\'s ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontFamily:'Courgette-Regular',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: SlideTransition(
                                  position: _offsetAnimation,
                                  child: Container(
                                   
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: numbers.length,
                                        itemBuilder: (context, index) {
                                          return Stack(
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
//                             
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/' +
                                                            (index + 1)
                                                                .toString() +
                                                            '.jpeg',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
//
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.white10,
                                                        Colors.green[900],
                                                      ],
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment(1.0, 1.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 28.0, bottom: 12),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    _lest[index],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                        fontFamily:
                                                            'GilroySemiBold',
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              )
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                              ),
                              SlideTransition(
                                position: _delayAnimation,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                    
                                          top: 10.0, left: 20.0),
                                      child: Text(
                                        'Latest activity',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily:'Courgette-Regular',
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 8),
                                      child: Row(
                                        children: <Widget>[

                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              RichText(
                                                text: TextSpan(
                                                    text: ' Muhammad Anas',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.green[900] ,
                                                        fontFamily:
                                                            'GilroySemiBold',
                                                        fontSize: 12),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text:
                                                            ' Tech advisor for flutter interact',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'GilroySemiBold',
                                                            fontSize: 12),
                                                      ),
                                                      TextSpan(
                                                        text: ' at SSUET.',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .green[900],
                                                            fontFamily:
                                                                'GilroySemiBold',
                                                            fontSize: 12),
                                                      )
                                                    ]),
                                              ),
                                              Text(
                                                '     January 01.01.2019',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                    fontFamily:
                                                        'GilroySemiBold',
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 38.0, left: 38, top: 10,bottom: 10.0),
                                      child: Stack(children: <Widget>[
                                        FadeTransition(
                                          opacity: animation,
                                          child: Container(
                                            height: 180,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .8,

                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                              image: new AssetImage(
                                                  "assets/images/anas3.jpeg"),
                                              fit: BoxFit.fill,
                                            )),
                                          ),
                                        ),
                                        Container(
                                          height: 180,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .8,
                                          decoration: BoxDecoration(
                                            gradient: new LinearGradient(
                                                colors: [
                                                  Colors.white10,
                                                  Colors.green[900],
                                                ],
                                                begin: Alignment.centerRight,
                                                end: Alignment(1.0, 1.0)),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
            )
          ],
        ));
  }
}

class NumbersModel {
  int number;
  int id;

  NumbersModel({this.number, this.id});
}