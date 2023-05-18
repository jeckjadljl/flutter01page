import 'package:flutter/material.dart';
import 'package:flutter01page/inside/settings.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 236, 235, 235),
        foregroundColor: Colors.black,
      ),
      body: Container(
          alignment: Alignment.topCenter,
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 236, 235, 235),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 340,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                      ),
                      const Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            "账号设置",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: InkWell(
                            child: const SizedBox(
                              height: 20,
                              width: 20,
                              child: Icon(Icons.read_more_outlined),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const SettingsPage();
                                }),
                              );
                            },
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 340,
                        color: Colors.white,
                      ),
                      const Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            "账号设置",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: InkWell(
                            child: const SizedBox(
                              height: 20,
                              width: 20,
                              child: Icon(Icons.read_more_outlined),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const SettingsPage();
                                }),
                              );
                            },
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 340,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        ),
                      ),
                      const Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            "账号设置",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: InkWell(
                            child: const SizedBox(
                              height: 20,
                              width: 20,
                              child: Icon(Icons.read_more_outlined),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const SettingsPage();
                                }),
                              );
                            },
                          )),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 340,
                     decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                    child: TextButton(onPressed: (() {
                      
                    }), child: const Text("退出登陆",style: TextStyle(fontSize: 12,color: Colors.red),)
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 30,
                    width: 120,
                    child: const Text("当前版本：////////"),
                  )
                ],
              )
            ],
          )),
    );
  }
}
