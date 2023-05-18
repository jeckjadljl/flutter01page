import 'package:flutter/material.dart';
import 'package:flutter01page/page/Column.dart';
import 'package:flutter01page/page/VIP.dart';
import 'package:flutter01page/page/head.dart';
import 'package:flutter01page/page/search.dart';
import 'package:flutter01page/page/setting.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(31, 190, 190, 190),
        child: Column(
          children: [
             SizedBox(height: 50,),
          Stack(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: InkWell(
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.settings),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const SettingPage();
                            }),
                          );
                        },
                      ))
                ],
              ),
            ],
          ),
          Container(
            height: 10,
          ),
          Stack(children: [
            InkWell(
              child: Container(
                height: 70,
                width: 300,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/head");
              },
            ),
            const Positioned(
              top: 5,
              left: 85,
              child: Text("昵称",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  )),
            ),
            const Positioned(
              bottom: 10,
              left: 85,
              child: Text("普通用户",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                  )),
            ),
            const Positioned(
                top: 13,
                right: 10,
                child: Text(
                  ">",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
            ClipOval(
              child: Container(
                height: 70,
                width: 70,
                child: Image.network(
                    "https://img1.baidu.com/it/u=4193612137,1746981558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=683",
                    fit: BoxFit.cover),
              ),
            )
          ]),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                height: 60,
                width: 280,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 97, 196, 100),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                ),
              ),
              const Positioned(
                top: 20,
                left: 10,
                child: Text(
                  "开通实验室会员",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 15,
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 97, 196, 100),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 149, 197, 136)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const VIPage();
                        }),
                      );
                    },
                    child: const Text("立即开通",style: TextStyle(fontSize: 13,color: Colors.black),),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: 50,
                width: 330,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                ),
                child: TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  label: const Text(
                    "联系我们",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    child: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Text(
                          ">",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ColumnPage();
                        }),
                      );
                    },
                  )),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 50,
                width: 330,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.clear_all_sharp),
                  label: const Text("订单信息", style: TextStyle(fontSize: 15)),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    child: const SizedBox(
                        height: 20,
                        width: 20,
                        child: Text(
                          ">",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const SearchPage();
                        }),
                      );
                    },
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
