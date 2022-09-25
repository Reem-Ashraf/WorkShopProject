import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/note/related/add_note.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
        backgroundColor: Colors.white,
        title: Text("Notes",style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,),),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(
        context, MaterialPageRoute(builder: (context) =>AddNote()));},child: Text('+',style: TextStyle(fontSize: 25,
      color: Colors.black),),backgroundColor: Colors.orange[500],),
      body: Center(child: Text("There's No Data To Show",style: GoogleFonts.poppins(fontSize: 20),),),
    );
  }
}
