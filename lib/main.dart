import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _counter = 0;

  void _incrementCounter() {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CounterInformationText(text: 'I am const Stateless Widget:'),
            CounterInformationText(text: 'I am Stateless Widget'),
            _buildCounterInfomationText(text: 'I am Method'),
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildCounterInfomationText({String text}) {
    debugPrint('$text, ${this.hashCode}');
    return Text(text);
  }
}

class CounterInformationText extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
  final String text;
  const CounterInformationText({this.text});
  @override
  Widget build(BuildContext context) {
    debugPrint('$text, ${this.hashCode}');
    return Text(text, style: textStyle);
  }
}
