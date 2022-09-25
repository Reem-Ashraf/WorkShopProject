import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odcproject/view/componant/core/card.dart';
class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
          title: Text("Midterms",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.filter_alt,color: Colors.orange[600],size: 35,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
            child: Column(
                children: [
                  card( text: 'Flutter'),
                  SizedBox(height: 10,),
                  card( text: 'Reaact'),
                  SizedBox(height: 10,),
                  card(text: 'Vue'),
                  SizedBox(height: 10,),
                  card( text: 'Flutter'),
                  SizedBox(height: 10,),
                  card( text: 'Reaact'),
                  SizedBox(height: 10,),
                  card(text: 'Vue'),
                  SizedBox(height: 10,),
                  card( text: 'Flutter'),
                  SizedBox(height: 10,),
                  card( text: 'Reaact'),
                  SizedBox(height: 10,),
                  card(text: 'Vue'),
                  SizedBox(height: 10,),

                ]
            ),
          ),
        )
    );;
  }
}
