import 'package:flutter/material.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: double.infinity,
                  child: const Text(
                    "个人资料",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 10,
                    child: SizedBox(
                        height: 20,
                        width: 20,
                        child: BackButton(onPressed: () {
                          Navigator.pop(context);
                        }))),
                Positioned(
                    top: 0,
                    right: 5,
                    child: SizedBox(
                      height: 30,
                      width: 50,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color.fromARGB(255, 250, 250, 250)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.orange),
                          ),
                          onPressed: (() {
                           Navigator.pop(context);
                          }),
                          child: const Text("保存",style: TextStyle(fontSize: 12),)),
                    ))
             
          ],
        ),
        Stack(
          children: [
            const SizedBox(
              height: 60,
              width: double.infinity,
              child: ListTile(
                title: Text("头像",style: TextStyle(fontSize: 16),),
              ),
            ),
            Positioned(
                bottom: 5,
                right: 10,
                child: ClipOval(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                        "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
                        fit: BoxFit.cover),
                  ),
                ))
          ],
        ),
        Divider(),
        ListTile(title: Text("姓名",style: TextStyle(fontSize: 16),)),
        Divider(),
        ListTile(title: Text("性别",style: TextStyle(fontSize: 16),)),
        Divider(),
        ListTile(title: Text("邮箱",style: TextStyle(fontSize: 16),)),
        Divider(),
        ListTile(title: Text("微信",style: TextStyle(fontSize: 16),)),
        Divider(),
        ListTile(title: Text("描述",style: TextStyle(fontSize: 16),)),
        Divider(),
      ],
    ));
  }
}
