import 'package:flutter/material.dart';
import 'package:t/modules/nav_drawer/navigation_drawer.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();

}
class _MainState extends State <Main>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
      ),
      //body: ,
    );
  }
}