import 'package:flutter/material.dart';
import 'package:flutter01page/page/ElevatedButton.dart';
import 'package:flutter01page/page/Listview.dart';
import './colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Row(
      children: const <Widget>[
        ElevatedButtonPage(),
       Expanded(
        child: ListViewPage(),
        ),
      ]
    ),
    );
  }
}


