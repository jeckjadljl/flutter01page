import 'package:chewie/chewie.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter01page/page/VIP.dart';
import 'package:flutter01page/page/home.dart';
import 'package:video_player/video_player.dart';

class ClassOnePage extends StatefulWidget {
  final String videoUrl;
  final String assetsurl;
  const ClassOnePage({this.videoUrl = "", this.assetsurl = "", super.key});

  @override
  State<ClassOnePage> createState() => _ClassOnePageState();
}

class _ClassOnePageState extends State<ClassOnePage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  bool isShow = true;

  @override
  void initState() {
    videoPlayerController = widget.videoUrl != ""
        ? VideoPlayerController.network(widget.videoUrl)
        : VideoPlayerController.asset(widget.assetsurl);

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 10 / 6,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      isLive: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  void _modalBottomSheet() async {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20),
                    topRight: const Radius.circular(20))),
            height: MediaQuery.of(context).size.height / 1.37353433,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          "简介",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: IconButton(
                            onPressed: (() {
                              Navigator.of(context).pop();
                            }),
                            icon: Icon(Icons.close)),
                      )
                    ],
                  ),
                ),
                Divider(height: 2),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                              Positioned(
                                  top: 36,
                                  left: 20,
                                  child: ClipOval(
                                    child: SizedBox(
                                      height: 45,
                                      width: 45,
                                      child: Image.network(
                                        "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              const Positioned(
                                top: 43,
                                left: 80,
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
                                  "上线时间:2022年8月25日",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 124, 123, 123),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                left: 20,
                                child: Text(
                                  "课程标签:xxxxxx",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 136, 134, 134),
                                    decoration: TextDecoration.none,
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
                              "课程介绍",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 24, 23, 23),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Column(children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 340,
                                  width: double.infinity,
                                  child: const Text(
                                    "介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 24, 23, 23),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 360,
                                  child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green),
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30))),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return const VIPage();
                                          }),
                                        );
                                      },
                                      child: const Text(
                                        "立即开通会员，观看全部课程",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      )),
                                ),
                              ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 250, 249, 249),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 230,
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      color: const Color.fromARGB(255, 231, 231, 231),
                      child: Chewie(controller: chewieController),
                    ),
                    Positioned(
                        top: 30,
                        left: 15,
                        child: SizedBox(
                            height: 20,
                            width: 20,
                            child: BackButton(onPressed: () {
                              Navigator.pop(context);
                            }))),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Color.fromARGB(255, 248, 248, 248),
                    ),
                    const Positioned(
                      bottom: 10,
                      left: 35,
                      child: Text("简介",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 43, 173, 48),
                            decoration: TextDecoration.none,
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 30,
                        child: Container(
                          height: 5,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(77, 196, 96, 1),
                              borderRadius: BorderRadius.circular(10)),
                        )),
                  ],
                ),
                const Divider(
                  height: 2,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            height: 90,
                            width: double.infinity,
                            color: Color.fromARGB(255, 250, 250, 250),
                            child: const Text("课程名称课程名称课程名称",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 26, 26, 26),
                                  decoration: TextDecoration.none,
                                )),
                          ),
                          const Positioned(
                            top: 35,
                            left: 10,
                            child: Text(
                              "主讲人名称",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 29, 29, 29),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 38,
                            left: 140,
                            child: Text(
                              "2022年8月25日上线",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 85, 84, 84),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text(
                                "简介简介简介简介简介简介简介简介简介简介简介简介",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black),
                              )),
                          Positioned(
                            bottom: 0,
                            right: 20,
                            child: SizedBox(
                              height: 30,
                              width: 55,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 247, 247, 247)),
                                ),
                                onPressed: _modalBottomSheet,
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
                          height: 420,
                          width: double.infinity,
                          child: ListView(
                            children: [
                              Stack(
                                children: [
                                  Column(
                                    children: [
                                      Divider(
                                        height: 3,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        height: 50,
                                        width: double.infinity,
                                        child: const Text(
                                          "目录",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(255, 22, 21, 21),
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
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 60,
                                                    width: 380,
                                                    color: Color.fromARGB(
                                                        255, 240, 240, 240),
                                                    child: const Text(
                                                      "第一节  课程名称课程名称课程名称",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 14, 13, 13),
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 10,
                                                    right: 20,
                                                    child: SizedBox(
                                                      height: 30,
                                                      width: 60,
                                                      child: TextButton(
                                                          style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all(Color
                                                                        .fromARGB(
                                                                            255,
                                                                            189,
                                                                            216,
                                                                            189)),
                                                            foregroundColor:
                                                                MaterialStateProperty
                                                                    .all(Colors
                                                                        .black),
                                                            shape: MaterialStateProperty.all(
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15))),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                return const VIPage();
                                                              }),
                                                            );
                                                          },
                                                          child: const Text(
                                                            "试看",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                      bottom: 5,
                                                      left: 10,
                                                      child: Text("30分钟",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.green,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          )))
                                                ],
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                height: 10,
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 60,
                                                    width: 380,
                                                    color: Color.fromARGB(
                                                        255, 239, 245, 248),
                                                    child: const Text(
                                                      "第二节  课程名称课程名称课程名称",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 14, 13, 13),
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                      bottom: 5,
                                                      left: 10,
                                                      child: Text("30分钟",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.green,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          )))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 60,
                                                    width: 380,
                                                    color: Color.fromARGB(
                                                        255, 241, 241, 241),
                                                    child: const Text(
                                                      "第三节  课程名称课程名称课程名称",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 14, 13, 13),
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                      bottom: 5,
                                                      left: 10,
                                                      child: Text("30分钟",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.green,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          )))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 60,
                                                    width: 380,
                                                    color: Color.fromARGB(
                                                        255, 241, 241, 241),
                                                    child: const Text(
                                                      "第四节  课程名称课程名称课程名称",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 14, 13, 13),
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                      bottom: 5,
                                                      left: 10,
                                                      child: Text("30分钟",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.green,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          )))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 60,
                                                    width: 380,
                                                    color: Color.fromARGB(
                                                        255, 240, 240, 240),
                                                    child: const Text(
                                                      "第五节  课程名称课程名称课程名称",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            255, 14, 13, 13),
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                    bottom: 5,
                                                    left: 10,
                                                    child: Text(
                                                      "30分钟",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.green,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            )));
  }
}
