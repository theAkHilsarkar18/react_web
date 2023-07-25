import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:react_web/screen/about/view/aboutscreen.dart';
import 'package:react_web/screen/base/controller/basecontroller.dart';
import 'package:react_web/screen/home/view/homescreen.dart';
import 'package:sizer/sizer.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}
BaseController baseController = Get.put(BaseController());
class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.green,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: InkWell(
                    onTap: () {
                  baseController.index.value = 0;
                },child: Text('Home',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 3.5.sp))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: InkWell(
                  onTap: () {
                    baseController.index.value = 1;
                  },
                    child: Text('About',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 3.5.sp))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: InkWell(
                  onTap: () {
                    baseController.index.value = 2;
                  },child: Text('Article',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 3.5.sp))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: InkWell(onTap: () {
                  baseController.index.value = 3;
                },child: Text('ArticleList',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 3.5.sp))),
              ),
            ],
          ),
        ),
        body: Obx(
          () => Container(
            child: baseController.screenList[3],
          ),
        )
      ),
    );
  }
}



String text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";