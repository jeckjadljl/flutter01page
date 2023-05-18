import 'package:flutter/material.dart';

class VIPage extends StatefulWidget {
  const VIPage({super.key});

  @override
  State<VIPage> createState() => _VIPageState();
}

class _VIPageState extends State<VIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("开通会员",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("会员页面",style: TextStyle(fontSize: 15,color: Colors.black),),
      ),
    );
  }
}