import 'package:flutter/material.dart';
import 'package:odcproject/view/componant/core/card.dart';


class Finals extends StatelessWidget {
  const Finals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
          title: Text("Finals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
                children: [
                  card( text: 'Flutter'),
                  SizedBox(height: 15,),
                  card( text: 'Reaact'),
                  SizedBox(height: 15,),
                  card(text: 'Vue'),
                  SizedBox(height: 15,),
                  card( text: 'Flutter'),
                  SizedBox(height: 15,),
                  card( text: 'Reaact'),
                  SizedBox(height: 15,),
                  card(text: 'Vue')
                ]
            ),
          ),
        )
    );
  }
}
