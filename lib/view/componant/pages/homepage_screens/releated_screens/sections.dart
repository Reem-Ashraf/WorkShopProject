import 'package:flutter/material.dart';
import 'package:odcproject/view/componant/core/card.dart';
class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
        title: Text("Sections",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.filter_alt,color: Colors.orange[600],size: 35,),
          ),
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            card( text: 'Flutter'),
            SizedBox(height: 20,),
            card( text: 'Reaact'),
            SizedBox(height: 20,),
            card(text: 'Vue')
          ]
        ),
      )
    );
  }
}
