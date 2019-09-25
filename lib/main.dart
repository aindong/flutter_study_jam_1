import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
//  int _counter = 0;
  bool _switchVal = false;
  bool _checkVal = false;

//  void _incrementCounter() {
//    setState(() {
//
//      _counter++;
//    });
//  }

  void _switch() {
    setState(() {
      _switchVal = !_switchVal;
    });
  }

  void _checked() {
    setState(() {
      _checkVal = !_checkVal;
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
    return Scaffold(// This trailing comma makes auto-formatting nicer for build methods.
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  height: 40,
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  height: 40,
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.yellow,
                  height: 40,
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  height: 40,
                ),
              ),
            ],
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:  Column(
                    children: <Widget>[
                      Text('Welcome to Flutter', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(child: Text('Raised'), onPressed: (){},),
                          OutlineButton(child: Text('Raised'), onPressed: (){},),
                          FlatButton(child: Text('Raised'), onPressed: (){},)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('This is a label'),
                          Switch(
                            value: _switchVal,
                            onChanged: (newValues) {
                              _switch();
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('This is a label 2'),
                          Checkbox(
                            value: _checkVal,
                            onChanged: (newValues) {
                              _checked();
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.ac_unit),
                          IconButton(icon: Icon(Icons.alarm), onPressed: (){},)
                        ],
                      ),
                      SizedBox(height: 25,),
                      TextField(),
                      SizedBox(height: 25,),
                      Image(
                        image: NetworkImage('https://miro.medium.com/max/1632/1*a-AMtQnnPgTe82iZ86Zxug.png'),
                      )

                    ],
                  ),
                ),
              ),
            ),
          )
        ],

      )
    );
  }
}
