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
                  width: 45.w,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h,),
                        Text("ArticleList",style: GoogleFonts.aBeeZee(color: Colors.black87,fontSize: 6.sp)),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Container(
                                height: 22.h,
                                width: 19.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network('https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/285555989/original/f3fc204a7309530ba8e42880e71ef9c4fefa1232/write-an-article-for-you.jpg',fit: BoxFit.cover,))),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Lorem Ipsum shub sdh",style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 4.sp)),
                                ),
                                Container(
                                  height: 21.h,
                                  width: 20.w,
                                    padding: EdgeInsets.only(left: 2.sp,right: 2.sp),
                                    child: Text('$text')),
                              ],
                            ),
                          ],
                        ),

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

