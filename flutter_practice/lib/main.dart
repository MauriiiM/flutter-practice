import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // A parameter wrapped by { } is a named optional parameter
  MyHomePage({Key key, this.title})
      : assert(title != null),
        super(key: key);

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
    // strongly and loosely typed
//    int _numSnacks = 100;
//    var _hadSnack = true;
//    // below two can also be strongly typed after respective keyword
//    final snacks = ["cookie, chips"]; //list itself is still mutable
//    static const snackCategory = ["healthy", "unhealthy"];//everything is immutable

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          'Hello World! Push the button to increase counter',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.display1,
        )
      ])),
      floatingActionButton:
          FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: Icon(Icons.add)),
    );
  }

  void main() => runApp(const Center(child: Text('Hello, world!', textDirection: TextDirection.ltr)));

  _MyHomePageState();
}
