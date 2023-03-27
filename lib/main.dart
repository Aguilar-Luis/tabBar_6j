import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
} //Mi app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Mi home Page

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff000000)),
            tabs: [
              Tab(icon: Icon(Icons.shopping_cart)),
              Tab(icon: Icon(Icons.smartphone)),
              Tab(icon: Icon(Icons.gps_fixed)),
              Tab(icon: Icon(Icons.shop)),
            ],
          ),
          title: Text('Tabs Luis Aguilar'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.shopping_cart, size: 350),
            Icon(Icons.smartphone, size: 350),
            Icon(Icons.gps_fixed, size: 350),
            Icon(Icons.shop, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState State<MyHomePage>
