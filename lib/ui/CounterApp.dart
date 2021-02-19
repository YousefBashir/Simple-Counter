import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterState();
  }
}

class CounterState extends State<CounterApp> {
  var _counter=0;
  void _addMethod(){
    setState(() {
      _counter= _counter+1;

    });
  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Simple Counter App",
          style: new TextStyle(
              fontSize: 35.5, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: new Column(
        children: [
          new Container(
            child: new Text(
              "Counter App!!",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic),
            ),
          ),
          new Expanded(
              child: new Center(
            child: new Text(
              "$_counter",
              style: new TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 28.3,
                  fontWeight: FontWeight.w500,
              color: _counter >33 ?Colors.green : Colors.red,),
            ),
          )),
          new Expanded(
              child: new Center(
            child: new FlatButton(
              color: Colors.lightGreen,
                onPressed:_addMethod,
                child: new Text(
                  "Add",
                  style: new TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.3,
                      fontStyle: FontStyle.italic,color: Colors.white70),
                )),
          ))
        ],
      ),
    );
  }
}
