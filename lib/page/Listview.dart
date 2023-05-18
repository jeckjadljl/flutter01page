import 'package:flutter/material.dart';
import 'package:flutter01page/side/class%20one.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ClassOnePage(
                videoUrl: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Stack(
            children: [
              InkWell(
                child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://img1.baidu.com/it/u=413643897,2296924942&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500"),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "俞敏洪系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "俞敏洪的人生故事",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
              Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.network(
                      "https://img1.baidu.com/it/u=1960110688,1786190632&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=281",
                      fit: BoxFit.cover,
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "王志东系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "王志东的创业经历",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://file03.16sucai.com/2017/1100/16sucai_p577c114_2ab.JPG"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "王兴系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "美国的创业经历",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img1.baidu.com/it/u=2995157981,91041597&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "创新创业时代的趋势",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "如何用非常规自我实现，打破常规，成为创新者",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img1.baidu.com/it/u=4193612137,1746981558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=683"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "刘强东系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "京东的创业故事",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img2.baidu.com/it/u=1792249350,650626052&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "李开复系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                  top: 30,
                  left: 120,
                  child: Text(
                    "李开复的成长故事",
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )),
                  Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
          Divider(),
          Stack(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 100,
                    width: double.infinity,
                    color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ClassOnePage();
                    }),
                  );
                },
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img0.baidu.com/it/u=3425868493,3104015061&fm=253&fmt=auto&app=120&f=JPEG?w=1199&h=800"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                  )),
              const Positioned(
                  top: 10,
                  left: 120,
                  child: Text(
                    "张锐系列课程",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
              const Positioned(
                top: 30,
                left: 120,
                child: Text(
                  "春雨医生的创业故事",
                  style: TextStyle(fontSize: 14,color: Colors.black),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                  child: Text(">",
                      style: TextStyle(fontSize: 13, color: Colors.black)))
            ],
          ),
        ],
      ),
    ]);
  }
}
