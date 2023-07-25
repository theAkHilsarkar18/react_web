import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../base/view/basescreen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                  width: 45.w,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Text("About",style: GoogleFonts.aBeeZee(color: Colors.black87,fontSize: 6.sp)),
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
