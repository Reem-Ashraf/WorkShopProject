import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/note/notes.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/calender.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/finals.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/lecture.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/midterm.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/sections.dart';
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int index=0;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Orange ",
                    style: GoogleFonts.poppins(
                        color: Colors.orange[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )),

                Text("Digetal Center",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ))
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Lectures()));
                      },
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            elevation: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                    CircleAvatar(child:Icon(Icons.menu_book,color: Colors.orange,size: 30,),
                                      radius: 25,
                                      backgroundColor: Colors.grey[200],)
                                  ],),
                                  SizedBox(height: 10,),
                                  Text('Lecture',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Sections()),);
                      },
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(child:Icon(Icons.person_sharp,color: Colors.orange,size: 30,),
                                        radius: 25,
                                        backgroundColor: Colors.grey[200],)

                                    ],),
                                  SizedBox(height: 15,),
                                  Text('Sections',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){ Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Midterms()));},
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(child:Icon(Icons.insert_page_break_outlined,color: Colors.orange,size: 30,),
                                        radius: 25,
                                        backgroundColor: Colors.grey[200],)

                                    ],),
                                  SizedBox(height: 10,),
                                  Text('Midterms',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Finals()));
                      },
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(child:Icon(Icons.pages,color: Colors.orange,size: 30,),
                                        radius: 25,
                                        backgroundColor: Colors.grey[200],)

                                    ],),
                                  SizedBox(height: 10,),
                                  Text('Finals',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){ Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Event()));},
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(child:Icon(Icons.calendar_today_rounded,color: Colors.orange,size: 30,),
                                        radius: 25,
                                        backgroundColor: Colors.grey[200],)

                                    ],),
                                  SizedBox(height: 10,),
                                  Text('Event',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){ Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>NoteScreen()));},
                      child: ClipRRect(
                        child: Container(
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(child:Icon(Icons.person_sharp,color: Colors.orange,size: 30,),
                                        radius: 25,
                                        backgroundColor: Colors.grey[200],)

                                    ],),
                                  SizedBox(height: 10,),
                                  Text('Notes',style: GoogleFonts.poppins(color: Colors.orange,fontSize: 18,
                                      fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )

          ],),

    ));
  }

}
