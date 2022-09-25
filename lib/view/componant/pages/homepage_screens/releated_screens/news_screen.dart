import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(child: Text("News",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}
