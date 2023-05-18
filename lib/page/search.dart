import 'package:flutter/material.dart';
import 'package:flutter01page/inside/deal.dart';
import 'package:flutter01page/inside/refund.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的订单",style: TextStyle(fontSize: 16),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 230, 230, 230),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 380,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "实验室课程会员",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Text(
                      "课程已购买",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 10,
                    child: Text(
                      "购买7天内学习未满30分钟可以退款",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 20,
                    child: Text(
                      "1888元",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 10,
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const RefundPage();
                                }),
                              );
                            },
                            child: const Text("申请退款",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue,
                                ))),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 380,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const DealPage();
                            }),
                          );
                        },
                        child: Text("")),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      "实验室课程会员",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Text(
                      "交易关闭",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Text(
                      "购买7天内学习未满30分钟可以退款",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Text(
                      "1888元",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
