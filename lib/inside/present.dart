import 'package:flutter/material.dart';

class PresentPage extends StatefulWidget {
  const PresentPage({super.key});

  @override
  State<PresentPage> createState() => _PresentPageState();
}

class _PresentPageState extends State<PresentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "商家已同意",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 228, 226, 226),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 90,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Text(""),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 35,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 206, 206),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  Positioned(
                      bottom: 60,
                      left: 65,
                      child: Container(
                        height: 2,
                        width: 100,
                        color: Colors.black,
                      )),
                  Positioned(
                      bottom: 50,
                      left: 170,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 207, 205, 205),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  Positioned(
                      bottom: 60,
                      right: 65,
                      child: Container(
                        height: 2,
                        width: 100,
                        color: Colors.black,
                      )),
                  Positioned(
                      bottom: 50,
                      right: 35,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 205, 205),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  const Positioned(
                      bottom: 20,
                      left: 17,
                      child: Text(
                        "提交申请",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )),
                  const Positioned(
                      bottom: 20,
                      left: 150,
                      child: Text(
                        "商家审核",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )),
                  const Positioned(
                      bottom: 20,
                      right: 10,
                      child: Text(
                        "商家同意退款",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: 370,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: const Text(
                      "实验室课程会员",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Text(
                      "课程已购买",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      "购买7天内学习未满30分钟可以退款",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text(
                      "合计:1888元",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                width: 370,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              width: 380,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: Text(
                                "退款类型:",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                width: 60,
                                color: Colors.white,
                                child: Text(
                                  "仅退款",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              alignment: Alignment.topLeft,
                              width: 370,
                              color: Colors.white,
                              child: Text(
                                "退款原因:",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 0,
                              child: Container(
                                width: 100,
                                color: Colors.white,
                                child: Text(
                                  "xxxxxxxxx",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              alignment: Alignment.topLeft,
                              width: 370,
                              color: Colors.white,
                              child: Text(
                                "售后编号:",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 10,
                              child: Container(
                                width: 200,
                                color: Colors.white,
                                child: Text(
                                  "27656456215465212116",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              alignment: Alignment.topLeft,
                              width: 380,
                              color: Colors.white,
                              child: Text(
                                "申请时间:",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 0,
                              child: Container(
                                width: 175,
                                color: Colors.white,
                                child: Text(
                                  "2022-09-17 10:30:24",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
    );
  }
}
