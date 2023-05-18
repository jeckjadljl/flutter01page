import 'package:flutter/material.dart';
import 'package:flutter01page/inside/present.dart';

class RefundPage extends StatefulWidget {
  const RefundPage({super.key});

  @override
  State<RefundPage> createState() => _RefundPageState();
}

class _RefundPageState extends State<RefundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("申请退款",style: TextStyle(fontSize: 16),),
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
                    height: 90,
                    width: 380,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
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
                    right: 20,
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
                    left: 20,
                    child: Text(
                      "购买7天内学习未满30分钟可以退款",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: 380,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: const Text(
                      "退款原因",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 20,
                    child: Text(
                      "选择原因 >",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 10,
                      child: Container(
                        height: 1,
                        width: 350,
                        color: Colors.black,
                      )),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      "退款金额",
                      style: TextStyle(
                        fontSize: 16,
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
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Stack(
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
                      "补充描述:",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      height: 200,
                      width: 320,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 240, 240, 240),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text("请输入退款说明 (选填)",style: TextStyle(fontSize: 13,color: Colors.black),),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 30,
                    child: SizedBox(
                      height: 40,
                      width: 320,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const PresentPage();
                              }),
                            );
                          },
                          child: const Text(
                            "提交",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          )),
                    ),
                  )
                ],
              )),
            ],
          )),
    );
  }
}
