

import 'package:get/get.dart';
import 'package:react_web/screen/about/view/aboutscreen.dart';
import 'package:react_web/screen/article/view/articlescreen.dart';
import 'package:react_web/screen/home/view/homescreen.dart';
import 'package:react_web/screen/list/view/listscreen.dart';

class BaseController extends GetxController
{

  RxInt index = 0.obs;
  RxList screenList = [
    HomeScreen(),
    AboutScreen(),
    ArticleScreen(),
    ListScreen(),
  ].obs;
}