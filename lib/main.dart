import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:react_web/screen/home/view/homescreen.dart';
import 'package:sizer/sizer.dart';

import 'screen/about/view/aboutscreen.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page: () => HomeScreen()),
          GetPage(name: '/', page: () => AboutScreen()),
        ],
      ),
    ),
  );
}
