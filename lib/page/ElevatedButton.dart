import 'package:flutter/material.dart';
import 'package:flutter01page/page/colors.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage({super.key});

  @override
  State<ElevatedButtonPage> createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  bool isSecondElementClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      height: 790,
      width: 100,
      child: Column(
        children: [
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: PFc.backgroundPrimary,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10.0)),
              ),
              child: const Text(
                "推荐",
                style: TextStyle(fontSize: 16, color: Colors.black),
              )),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(1)),
              ),
              child: const Text("理论课程",style: TextStyle(fontSize: 16, color: Colors.black),)),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: PFc.backgroundPrimary,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              ),
              child: const Text("大咖会谈",style: TextStyle(fontSize: 16, color: Colors.black),)),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: PFc.backgroundPrimary,
                borderRadius: BorderRadius.only(),
              ),
              child: const Text("精彩列会",style: TextStyle(fontSize: 16, color: Colors.black),)),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: PFc.backgroundPrimary,
                borderRadius: BorderRadius.only(),
              ),
              child: const Text("往期课程",style: TextStyle(fontSize: 16, color: Colors.black),)),
          Expanded(
            child: Container(
              color: PFc.backgroundPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
