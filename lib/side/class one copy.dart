import 'package:flutter/material.dart';
import 'package:flutter01page/page/VIP.dart';
import 'package:flutter01page/page/home.dart';
import 'package:flutter01page/side/details.dart';
import 'package:video_player/video_player.dart';

class ClassOnePage extends StatefulWidget {
  const ClassOnePage({super.key});

  @override
  State<ClassOnePage> createState() => _ClassOnePageState();
}

class _ClassOnePageState extends State<ClassOnePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                      height: 210,
                      width: double.infinity,
                      child: Image.network(
                          "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
                          fit: BoxFit.cover)),
                  const Positioned(
                      top: 100,
                      child: Text(
                        "开通会员可继续学习",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 34, 33, 33),
                          decoration: TextDecoration.none,
                        ),
                      )),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: BackButton(onPressed: () {
              Navigator.pop(context);
            })
                      )),
                  Positioned(
                    top: 130,
                    child: SizedBox(
                      height: 30,
                      width: 90,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 96, 194, 99)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          onPressed: (() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const VIPage();
                              }),
                            );
                          }),
                          child: const Text("去开通")),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: const Text("简介",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    )),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 130,
                          width: double.infinity,
                          color: Colors.white,
                          child: const Text("课程名称课程名称课程名称",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 26, 26, 26),
                                decoration: TextDecoration.none,
                              )),
                        ),
                        const Positioned(
                          top: 40,
                          left: 20,
                          child: Text(
                            "主讲人名称",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            "简介简介简介简介简介简介简介简介简介简介简介简介简介",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 124, 122, 122),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 15,
                          child: SizedBox(
                            height: 15,
                            width: 40,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const DetailsPage();
                              }),
                            );
                              },
                              child: const Text("详情",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    decoration: TextDecoration.none,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: double.infinity,
                      child: const Text(
                        "目录",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 24, 23, 23),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 60,
                                  width: 350,
                                  color: Color.fromARGB(255, 245, 244, 244),
                                  child: const Text(
                                    "第一节  课程名称课程名称课程名称",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 14, 13, 13),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 20,
                                  child: SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: TextButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 144, 235, 147)),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                        ),
                                        onPressed: () {},
                                        child: const Text("试看")),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 10,
                            ),
                            Container(
                              height: 60,
                              width: 350,
                              color: Color.fromARGB(255, 243, 241, 241),
                              child: const Text(
                                "第二节  课程名称课程名称课程名称",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 14, 13, 13),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: 350,
                              color: Color.fromARGB(255, 247, 245, 245),
                              child: const Text(
                                "第三节  课程名称课程名称课程名称",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 14, 13, 13),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 60,
                              width: 350,
                              color: Color.fromARGB(255, 241, 241, 241),
                              child: const Text(
                                "第四节  课程名称课程名称课程名称",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 14, 13, 13),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 60,
                              width: 350,
                              color: Color.fromARGB(255, 245, 245, 245),
                              child: const Text(
                                "第五节  课程名称课程名称课程名称",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 14, 13, 13),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}



