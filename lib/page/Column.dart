import 'package:flutter/material.dart';


class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("联系我们",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      body: const Center(
        child: Text("联系我们",style: TextStyle(fontSize: 15,color: Colors.black),),
      ),
    );
  }
}
