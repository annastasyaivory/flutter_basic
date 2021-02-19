import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic',
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
            backgroundColor: Colors.red,
          ),
          body: ListView(
            children: [
              Column(children: <Widget>[
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.fromLTRB(15.0, 5.0, 5.0, 5.0),
                      alignment: Alignment.center,
                      child: Text(
                          'BERITA TERBARU' '   ' 'PERTANDINGAN HARI INI',
                          style: TextStyle(fontSize: 16)),
                      height: 30.0,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(0.0),
                  padding: const EdgeInsets.all(0.0),
                  decoration: myBoxDecoration1(),
                  child: Column(
                    children: [
                      Image.asset('assets/images/costa.jpg'),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Costa Mendekat ke Palmeiras',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        height: 35.0,
                      ),
                      Container(
                        color: Colors.purple[300],
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                        child: Text('Transfer',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: myBoxDecoration2(),
                  margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: myBoxDecoration2(),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('assets/images/pique.jpg'),
                              height: 100.0,
                              width: 150.0,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                              alignment: Alignment.center,
                              child: Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                              height: 100,
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Barcelona Feb 13, 2021',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black)),
                        height: 35.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: myBoxDecoration2(),
                  margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: myBoxDecoration2(),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('assets/images/pique.jpg'),
                              height: 100.0,
                              width: 150.0,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                              child: Text(
                                  'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                              height: 100,
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Barcelona Feb 13, 2021',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black)),
                        height: 35.0,
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          )),
    );
  }

  myBoxDecoration1() {
    return BoxDecoration(
      border: Border.all(color: Colors.purple[400]),
    );
  }

  myBoxDecoration2() {
    return BoxDecoration(
      border: Border.all(color: Colors.blue[800]),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
