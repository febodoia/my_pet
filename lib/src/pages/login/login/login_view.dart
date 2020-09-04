import 'package:flutter/material.dart';
import 'package:my_pet/src/app/my_app.dart';
import 'package:my_pet/src/pages/home/home_view.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  //The code is commented because instead of manual scrolling with animation,
  //Now PageView is being used

  /*double scrollPercent = 0.0;
  Offset startDrag;
  double startDragPercentScroll;
  double dragDirection; // -1 for left, +1 for right

  AnimationController controller_minus1To0;
  AnimationController controller_0To1;
  CurvedAnimation anim_minus1To0;
  CurvedAnimation anim_0To1;

  final numCards = 3;

  void _onHorizontalDragStart(DragStartDetails details) {
    startDrag = details.globalPosition;
    startDragPercentScroll = scrollPercent;
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    final currDrag = details.globalPosition;
    final dragDistance = currDrag.dx - startDrag.dx;
    if (dragDistance > 0) {
      dragDirection = 1.0;
    } else {
      dragDirection = -1.0;
    }
    final singleCardDragPercent = dragDistance / context.size.width;

    setState(() {
      scrollPercent =
          (startDragPercentScroll + (-singleCardDragPercent / numCards))
              .clamp(0.0 - (1 / numCards), (1 / numCards));
      print(scrollPercent);
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (scrollPercent > 0.1666) {
      print("FIRST CASE");
      controller_0To1.forward(from: scrollPercent * numCards);
    } else if (scrollPercent < 0.1666 &&
        scrollPercent > -0.1666 &&
        dragDirection == -1.0) {
      print("SECOND CASE");
      controller_0To1.reverse(from: scrollPercent * numCards);
    } else if (scrollPercent < 0.1666 &&
        scrollPercent > -0.1666 &&
        dragDirection == 1.0) {
      print("THIRD CASE");
      controller_minus1To0.forward(from: scrollPercent * numCards);
    } else if (scrollPercent < -0.1666) {
      print("LAST CASE");
      controller_minus1To0.reverse(from: scrollPercent * numCards);
    }

    setState(() {
      startDrag = null;
      startDragPercentScroll = null;
    });
  }
  */

  @override
  void initState() {
    super.initState();

    //The code is commented because instead of manual scrolling with animation,
    //Now PageView is being used

    /*
    controller_minus1To0 = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: -1.0,
      upperBound: 0.0,
    );
    controller_0To1 = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0.0,
      upperBound: 1.0,
    );

    anim_minus1To0 = new CurvedAnimation(
      parent: controller_minus1To0,
      curve: Interval(0.10, 0.90, curve: Curves.bounceInOut),
    );
    anim_0To1 = new CurvedAnimation(
      parent: controller_0To1,
      curve: Interval(0.10, 0.90, curve: Curves.bounceInOut),
    );

    anim_0To1.addListener(() {
      scrollPercent = controller_0To1.value / numCards;
//      print(scrollPercent);
      setState(() {});
    });

    anim_minus1To0.addListener(() {
      scrollPercent = controller_minus1To0.value / numCards;
//      print(scrollPercent);
      setState(() {});
    });
    */
  }

  Widget LoginPage() {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.05), BlendMode.dstATop),
          image: AssetImage('assets/images/bg_login.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(100.0),
            child: Center(
              child: Icon(
                Icons.pets,
                color: Colors.green,
                size: 50.0,
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "EMAIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.green, width: 0.5, style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    controller: _usernameController,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'email@email.com',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 24.0,
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "SENHA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.green, width: 0.5, style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '*********',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 24.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Colors.green,
                    onPressed: () => {},
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // new Container(
          //   width: MediaQuery.of(context).size.width,
          //   margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
          //   alignment: Alignment.center,
          //   child: Row(
          //     children: <Widget>[
          //       new Expanded(
          //         child: new Container(
          //           margin: EdgeInsets.all(8.0),
          //           decoration: BoxDecoration(border: Border.all(width: 0.25)),
          //         ),
          //       ),
          //       Text(
          //         "OR CONNECT WITH",
          //         style: TextStyle(
          //           color: Colors.grey,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       new Expanded(
          //         child: new Container(
          //           margin: EdgeInsets.all(8.0),
          //           decoration: BoxDecoration(border: Border.all(width: 0.25)),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // new Container(
          //   width: MediaQuery.of(context).size.width,
          //   margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
          //   child: new Row(
          //     children: <Widget>[
          //       new Expanded(
          //         child: new Container(
          //           margin: EdgeInsets.only(right: 8.0),
          //           alignment: Alignment.center,
          //           child: new Row(
          //             children: <Widget>[
          //               new Expanded(
          //                 child: new FlatButton(
          //                   shape: new RoundedRectangleBorder(
          //                     borderRadius: new BorderRadius.circular(30.0),
          //                   ),
          //                   color: Color(0Xff3B5998),
          //                   onPressed: () => {},
          //                   child: new Container(
          //                     child: new Row(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       children: <Widget>[
          //                         new Expanded(
          //                           child: new FlatButton(
          //                             onPressed: () => {},
          //                             padding: EdgeInsets.only(
          //                               top: 20.0,
          //                               bottom: 20.0,
          //                             ),
          //                             child: new Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceEvenly,
          //                               children: <Widget>[
          //                                 Icon(
          //                                   const IconData(0xea90,
          //                                       fontFamily: 'icomoon'),
          //                                   color: Colors.white,
          //                                   size: 15.0,
          //                                 ),
          //                                 Text(
          //                                   "FACEBOOK",
          //                                   textAlign: TextAlign.center,
          //                                   style: TextStyle(
          //                                       color: Colors.white,
          //                                       fontWeight: FontWeight.bold),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       new Expanded(
          //         child: new Container(
          //           margin: EdgeInsets.only(left: 8.0),
          //           alignment: Alignment.center,
          //           child: new Row(
          //             children: <Widget>[
          //               new Expanded(
          //                 child: new FlatButton(
          //                   shape: new RoundedRectangleBorder(
          //                     borderRadius: new BorderRadius.circular(30.0),
          //                   ),
          //                   color: Color(0Xffdb3236),
          //                   onPressed: () => {},
          //                   child: new Container(
          //                     child: new Row(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       children: <Widget>[
          //                         new Expanded(
          //                           child: new FlatButton(
          //                             onPressed: () => {},
          //                             padding: EdgeInsets.only(
          //                               top: 20.0,
          //                               bottom: 20.0,
          //                             ),
          //                             child: new Row(
          //                               mainAxisAlignment:
          //                                   MainAxisAlignment.spaceEvenly,
          //                               children: <Widget>[
          //                                 Icon(
          //                                   const IconData(0xea88,
          //                                       fontFamily: 'icomoon'),
          //                                   color: Colors.white,
          //                                   size: 15.0,
          //                                 ),
          //                                 Text(
          //                                   "GOOGLE",
          //                                   textAlign: TextAlign.center,
          //                                   style: TextStyle(
          //                                       color: Colors.white,
          //                                       fontWeight: FontWeight.bold),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
        ],
      ),
    );
  }

  PageController controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(body: SingleChildScrollView(child: LoginPage())));
  }
}
