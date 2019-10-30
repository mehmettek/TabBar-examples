import 'package:flutter/material.dart';
import 'package:orn_1/alertdialogandsnackbar.dart';
import 'package:orn_1/denklemhesapla.dart';
import 'package:orn_1/dropdownandimage.dart';
import 'package:orn_1/myhomepage.dart';
import 'package:orn_1/numerical_methods.dart';
import 'package:orn_1/textediting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      routes: {
        "/":(context) => MyHomePage(title:"Example"),
        },
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 6, vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: TabBarView(
        children: <Widget>[
          Page1(),
          TextEditing(),
          DropDownAndImage(),
          Denklem(),
          DialogWidget(),
          NumericalMethods(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.touch_app),
            ),
            Tab(
              icon: Icon(Icons.touch_app),
            ),
            Tab(
              icon: Icon(Icons.touch_app),
            ),
            Tab(
              icon: Icon(Icons.touch_app),
            ),
            Tab(
              icon: Icon(Icons.touch_app),
            ),
            Tab(
              icon: Icon(Icons.touch_app),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
