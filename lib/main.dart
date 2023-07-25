import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:react_web/screen/article/view/articlescreen.dart';
import 'package:react_web/screen/base/view/basescreen.dart';
import 'package:react_web/screen/home/view/homescreen.dart';
import 'package:react_web/screen/list/view/listscreen.dart';
import 'package:sizer/sizer.dart';

import 'screen/about/view/aboutscreen.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page: () => BaseScreen()),
          GetPage(name: '/home', page: () => HomeScreen()),
          GetPage(name: '/about', page: () => AboutScreen()),
          GetPage(name: '/article', page: () => ArticleScreen()),
          GetPage(name: '/list', page: () => ListScreen()),
        ],
      ),
    ),
  );
}
