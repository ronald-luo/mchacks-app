import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff4f6fd),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Hello Sal Khan",
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/sal khan.jpg')

                              ///user icon here
                              )),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text("These Lessons Should Be Interesting!",
                    style: TextStyle(fontSize: 30))
              ]),
        ));
  }
}
