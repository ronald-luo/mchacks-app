import 'package:flutter/material.dart';
import './home_screen.dart';
import './tabs_screen.dart';

class OpeningScreen extends StatelessWidget {
  static const routeName = '/';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), routes: {
      '/HomePage': (context) => TabsScreen(),
    });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9E9E9E9E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'I believe in',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Intuition',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          height: 1),
                    ),
                  ),
                  Container(
                    child: Text('and',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  Container(
                      child: Text(
                    'Inspiration',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  )),
                ]),
          ),
          Stack(children: <Widget>[
            Container(
              alignment: Alignment.bottomRight,
              height: MediaQuery.of(context).size.height * .742,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/study.png'),
              )),
            ),
            Container(
              alignment: Alignment.topRight,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage("assets/einstein.png"),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      openHomePage();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text('Ready to learn..'),
                    ),
                  ),
                ))
          ])
        ],
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/HomePage');
  }
}
