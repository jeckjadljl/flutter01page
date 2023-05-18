import 'package:flutter/material.dart';

class DealPage extends StatefulWidget {
  const DealPage({super.key});

  @override
  State<DealPage> createState() => _DealPageState();
}

class _DealPageState extends State<DealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("交易关闭",style: TextStyle(fontSize: 16),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 230, 230, 230),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: 380,
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                width: 380,
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
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              alignment: Alignment.topLeft,
                              width: 380,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: Text(
                                "订单编号:",
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
                                "下单时间:",
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
                            ),
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
                                "交易方式",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 10,
                              child: Container(
                                width: 60,
                                color: Colors.white,
                                child: Text(
                                  "支付宝",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
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
