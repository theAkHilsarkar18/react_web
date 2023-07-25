import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../base/view/basescreen.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 42.w,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Text("ArticleList",style: GoogleFonts.aBeeZee(color: Colors.black87,fontSize: 6.sp)),
                        SizedBox(height: 2.h,),
                        Text("$text$text",textAlign: TextAlign.justify),
                        SizedBox(height: 2.h,),
                        Text("$text$text$text",textAlign: TextAlign.justify),
                        SizedBox(height: 2.h,),
                        Text("$text$text",textAlign: TextAlign.justify),

                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

