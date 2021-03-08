import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//สร้างwidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyHomepage> {
  int number = 0; //set state

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text("tap for count"));
    data.add(Text("$number", style: TextStyle(fontSize: 30)));

    return Scaffold(
      appBar: AppBar(
        title: Text("Tap count app"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: data,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
