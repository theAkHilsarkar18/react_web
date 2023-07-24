import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('Home',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 4.5.sp)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('About',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 4.5.sp)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('Article',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 4.5.sp)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('ArticleList',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w500,fontSize: 4.5.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
