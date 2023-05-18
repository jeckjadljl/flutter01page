// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter01page/page/person.dart';
import 'package:hidable/hidable.dart';
import './home.dart';


class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key,this.index=0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex=widget.index;
  }
  final List<Widget> _pages = const [
    HomePage(),
    PersonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _pages[_currentIndex],
         bottomNavigationBar:
          BottomNavigationBar(
          fixedColor: Colors.green,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
         items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "我的",
            ),
      ]),
         );
    
  }
}



