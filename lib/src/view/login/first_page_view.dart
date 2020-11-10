import 'package:flutter/material.dart';

import 'login/login_view.dart';
import 'signup/signup_view.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PageController controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);

  Widget FirstPageView() {
    return new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
    color: Colors.greenAccent,
    image: DecorationImage(
      colorFilter: new ColorFilter.mode(
          Colors.black.withOpacity(0.5), BlendMode.dstATop),
      image: AssetImage('assets/images/bg_login.jpeg'),
      fit: BoxFit.cover,
    ),
        ),
        child: new Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 220.0),
        child: Center(
          child: Icon(
            Icons.pets,
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 20.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "My",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
              ),
            ),
            Text(
              "Pet",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      new Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 220.0),
        alignment: Alignment.center,
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () => gotoLogin(),
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
                              color: Colors.green,
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
      new Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
        alignment: Alignment.center,
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.black54,
                //highlightedBorderColor: Colors.white,
                onPressed: () => gotoSignup(),
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
                          "CADASTRAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
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
    ],
        ),
      );
  }

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
    controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              controller: controller,
              physics: new AlwaysScrollableScrollPhysics(),
              children: <Widget>[LoginScreen(), FirstPageView(), SignUp()],
              scrollDirection: Axis.horizontal,
            )),
      ),
    );
  }
}
