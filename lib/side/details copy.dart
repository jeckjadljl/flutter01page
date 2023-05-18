// import 'package:flutter/material.dart';
// import 'package:flutter01page/page/VIP.dart';
// import 'package:flutter01page/page/head.dart';
// import 'package:flutter01page/page/home.dart';
// import 'package:flutter01page/side/class%20one.dart';

// class DetailsPage extends StatefulWidget {
//   const DetailsPage({super.key});

//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.white,
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 SizedBox(
//                     height: 210,
//                     width: double.infinity,
//                     child: Image.network(
//                         "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
//                         fit: BoxFit.cover)),
//                 const Positioned(
//                     top: 100,
//                     child: Text(
//                       "开通会员可继续学习",
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Color.fromARGB(255, 34, 33, 33),
//                         decoration: TextDecoration.none,
//                       ),
//                     )),
//                 Positioned(
//                     top: 5,
//                     left: 5,
//                     child: SizedBox(
//                         height: 20,
//                         width: 20,
//                         child: BackButton(onPressed: () {
//                           Navigator.pop(context);
//                         }))),
//                 Positioned(
//                   top: 130,
//                   child: SizedBox(
//                     height: 30,
//                     width: 90,
//                     child: TextButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(
//                               const Color.fromARGB(255, 96, 194, 99)),
//                           foregroundColor:
//                               MaterialStateProperty.all(Colors.black),
//                           shape: MaterialStateProperty.all(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30))),
//                         ),
//                         onPressed: (() {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(builder: (BuildContext context) {
//                               return const VIPPage();
//                             }),
//                           );
//                         }),
//                         child: const Text("去开通")),
//                   ),
//                 ),
//               ],
//             ),
//             Stack(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   height: 50,
//                   width: double.infinity,
//                   color: Colors.white,
//                   child: const Text("简介",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                       )),
//                 ),
//                 Positioned(
//                     top: 10,
//                     right: 30,
//                     child: SizedBox(
//                         height: 30,
//                         width: 30,
//                         child: IconButton(
//                           onPressed: (() {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) {
//                                 return const ClassOnePage();
//                               }),
//                             );
//                           }),
//                           icon: const Icon(Icons.backspace),
//                         )))
//               ],
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10),
//                         height: 130,
//                         width: double.infinity,
//                         color: Colors.white,
//                         child: const Text("课程名称课程名称课程名称",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Color.fromARGB(255, 26, 26, 26),
//                               decoration: TextDecoration.none,
//                             )),
//                       ),
//                       Positioned(
//                           top: 35,
//                           left: 20,
//                           child: ClipOval(
//                             child: SizedBox(
//                               height: 45,
//                               width: 45,
//                               child: Image.network(
//                                 "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           )),
//                       const Positioned(
//                         top: 40,
//                         left: 80,
//                         child: Text(
//                           "主讲人名称",
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Color.fromARGB(255, 29, 29, 29),
//                             decoration: TextDecoration.none,
//                           ),
//                         ),
//                       ),
//                       const Positioned(
//                         bottom: 30,
//                         left: 20,
//                         child: Text(
//                           "上线时间:2022年8月25日",
//                           style: TextStyle(
//                             fontSize: 10,
//                             color: Color.fromARGB(255, 160, 157, 157),
//                             decoration: TextDecoration.none,
//                           ),
//                         ),
//                       ),
//                       const Positioned(
//                         bottom: 10,
//                         left: 20,
//                         child: Text(
//                           "课程标签:xxxxxx",
//                           style: TextStyle(
//                             fontSize: 10,
//                             color: Color.fromARGB(255, 160, 157, 157),
//                             decoration: TextDecoration.none,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(10),
//                     height: 50,
//                     width: double.infinity,
//                     child: const Text(
//                       "课程介绍",
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Color.fromARGB(255, 24, 23, 23),
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ),
//                   Stack(
//                     children: [
//                       Column(children: [
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                           height: 340,
//                           width: double.infinity,
//                           child: const Text(
//                             "介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍介绍",
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Color.fromARGB(255, 24, 23, 23),
//                               decoration: TextDecoration.none,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30,
//                           width: 360,
//                           child: TextButton(
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.green),
//                                 foregroundColor:
//                                     MaterialStateProperty.all(Colors.black),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(30))),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).push(
//                                   MaterialPageRoute(
//                                       builder: (BuildContext context) {
//                                     return const VIPPage();
//                                   }),
//                                 );
//                               },
//                               child: const Text("立即开通会员，观看全部课程")),
//                         ),
//                       ])
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
