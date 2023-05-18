// import 'package:flutter/material.dart';
//配置ios风格的路由
import 'package:flutter/cupertino.dart';
import '../page/VIP.dart';
import '../page/head.dart';
import '../page/search.dart';
import '../page/setting.dart';
import '../side/class one.dart';
 //1.配置路由
   Map routes={
          "/vip":(context) => const VIPage(),
          "/head":(contxt) =>const HeadPage(),
          "/Search":(contxt) =>const SearchPage(),
          "/setting":(contxt) =>const SettingPage(),
          "/class one":(contxt)=> const ClassOnePage(),
  };

//2.配置onGenerateRoute  固定写法
  var onGenerateRoute=(RouteSettings settings) {
        final String? name = settings.name;  //"/news"  或 "/search"
        final Function? pageContentBuilder = routes[name];  // Function = (context){return const NewsPage()}

        if (pageContentBuilder != null) {
          if (settings.arguments != null){
            final Route route =CupertinoPageRoute(
              builder: (context)=>
                  pageContentBuilder(context, settings.arguments));
                  return route;
          } else { 
              final Route route = CupertinoPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
        return null;
      };