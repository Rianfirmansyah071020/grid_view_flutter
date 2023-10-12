import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Container> myList = List.generate(
    50,
    (index) => Container(
      // width: 100,
      // height: 100,
      color: Color.fromARGB(255, 225, 225, 225),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
          leading: CircleAvatar(
            child: Icon(Icons.access_time_filled_outlined),
          ),
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 4),
          children: myList,
        ),
      ),
    );
  }
}
