import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Orange ",
                      style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      )),

                  Text("Digetal Center",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign Up", style:GoogleFonts.poppins(
                      fontSize: 27,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Name",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-Mail",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.orange,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.orange,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Column(
                      children: [Text("Gender",style: GoogleFonts.poppins(fontSize: 19,),),
                        OutlinedButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          style:ButtonStyle(side: MaterialStateProperty.all(BorderSide(
                            color: Colors.orange,
                            width: 1.0,
                          ))),),],
                    ),
                    Column(
                      children: [Text("University",style: GoogleFonts.poppins(fontSize: 19,),),
                        OutlinedButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          style:ButtonStyle(side: MaterialStateProperty.all(BorderSide(
                            color: Colors.orange,
                            width: 1.0,
                          ))),),],
                    ),
                  ],),
                  Center(
                    child: Column(
                      children: [Text("Grade",style: GoogleFonts.poppins(fontSize: 19,),),
                        Container(
                          width: 100,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            style:ButtonStyle(side: MaterialStateProperty.all(BorderSide(
                              color: Colors.orange,
                              width: 1.0,
                            ))),),
                        ),],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    child: Material (
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                      color: Colors.orange[800],
                      child: MaterialButton(
                        height: 40,
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(

                        width: 140,
                        child: Expanded(
                          child: Divider(thickness: 0, endIndent: 2,color: Colors.black,),),
                      ),
                      Text("OR", style:GoogleFonts.poppins(color:Colors.black,
                          fontSize: 20),),
                      Container(
                          width: 150,
                          child: Expanded(
                            child: Divider(thickness: 0, endIndent: 2,color: Colors.black,),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Login",style: GoogleFonts.poppins(color: Colors.orange[700],
                          fontWeight:FontWeight.bold,
                          fontSize: 20)),
                      style:ButtonStyle(side: MaterialStateProperty.all(BorderSide(
                        color: Colors.orange,
                        width: 3.0,
                      ))),),
                  )







                ],
              ),
            ),
          ],),
        ),
      ),

    );
  }
}
