import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Support extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
    title: Text("Support",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    centerTitle: true,),
        body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
            Container(
            height: 60,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person,),
                labelText: "Name",
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
            SizedBox(height:15,),
            Container(
              height: 60,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,),
                  labelText: "E-Mail",
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(12))),
                ),
              ),
            ),
              SizedBox(height:15,),
              Container(
                child: TextFormField(
                  maxLines: 10,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(12))),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                child: Material (
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                  color: Colors.orange[800],
                  child: MaterialButton(
                    height: 40,
                    onPressed: () {},
                    child: Text(
                        "Submit",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)
                    ),
                  ),
                ),
              ),
          ],),
        ),
      ) ,
    );
  }
}
