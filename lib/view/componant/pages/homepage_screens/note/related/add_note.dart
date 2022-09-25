import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
        backgroundColor: Colors.white,
        title: Text("Add Note",style: GoogleFonts.poppins(fontSize: 25,color: Colors.black),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            TextFormField(
          decoration: InputDecoration(
          labelText: "Title",
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius:
                BorderRadius.only(topLeft:Radius.circular(15),bottomRight: Radius.circular(15))),
            )
            ),
            SizedBox(height: 20,),
            TextFormField(
                decoration: InputDecoration(
                  labelText: "Date",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.only(topLeft:Radius.circular(15),bottomRight: Radius.circular(15))),
                )
            ),
            SizedBox(height: 20,),
            Container(
              child: TextFormField(
                maxLines: 6,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.only(topLeft:Radius.circular(15),bottomRight: Radius.circular(15))),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),color: Colors.orange,),
                width: 90,
                height: 40,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                  Text("+",style: TextStyle(color: Colors.black,fontSize: 18,),),
                  SizedBox(width: 5,),
                  Text('Add',style: TextStyle(color: Colors.black,fontSize: 18),),
                ],),

              ),
            )

          ],),
        ),
      ),
    );
  }
}
