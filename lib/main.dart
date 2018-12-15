import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget main_body() {

    Widget textSection = Container(
      padding: const EdgeInsets.only(left: 32.0,right: 32.0),
      child: Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('images/lake.jpg',

          fit: BoxFit.cover,
        ),
        first_row(),
        second_row(),
        textSection,
      ],
    );
  }

  Widget first_row() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0,),
        child: Row(
          children: <Widget>[
            first_row_first_column(),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('41'),
            )
          ],
        ),
      ),
    );
  }

  Widget first_row_first_column() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Oeschinen Lake Campground',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold
            ),
            ),
          ),
          Text('Kandersteg, Switzerland'),
        ],
      ),
    );
  }

  Widget second_row() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Icon(

                    Icons.call,
                    color: Colors.blue,
                    size: 32.0,
                  ),
                  Container(
                    child: Text('CALL',
                    style: TextStyle(color: Colors.blue),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Icon(

                    Icons.near_me,
                    color: Colors.blue,
                    size: 32.0,
                  ),
                  Container(
                    child: Text('ROUTE',
                      style: TextStyle(color: Colors.blue),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Icon(

                    Icons.share,
                    color: Colors.blue,
                    size: 32.0,
                  ),
                  Container(
                    child: Text('SHARE',
                      style: TextStyle(color: Colors.blue),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: main_body(),
      ),
    );
  }
}
