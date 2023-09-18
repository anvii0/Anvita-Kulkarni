import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
    void_incrementCounter(){
        setState(() {
            _counter++;
        });
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlinment 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Count:';
                style: TextStyle(fontsize:24),
              ),
              Text(
            '$_counter',
                style: TextStyle(fontSize: 48),
              ),
            ],
          ),
        ),
        FloatingActionButton(
        onPressed:_incrementCounter
        tooltip: 'Increment', 
        child: Icons(Icons.add),
        ),
        (
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ),
    );
  }
}
