import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Gothamssm',
          primaryColor: Colors.black
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Vacation'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            color: Colors.green,
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
            child: Container(color: Colors.grey, height: 1.0,),
            preferredSize: Size.fromHeight(1.0)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/vacation.png',
                height: 120.0,
                width: 120.0
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Text(
                'Going on vacation?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                child: Text(
                  'You can set up vacation for your devices in New Home, so when you are away you can make sure everything is ok.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      height: 1.2
                  ),

                  textAlign: TextAlign.center,
                )
            ),
            Container(
              margin: EdgeInsets.all(24.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                height: 40.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)
                  ),
                  child: Text(
                    'Set a vacation',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
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
