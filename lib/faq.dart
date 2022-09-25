import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
        backgroundColor:Colors.white,
        title: Text("FAQ",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black),)
        ,centerTitle: true,),
    );
  }
}
