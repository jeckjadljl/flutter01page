import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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