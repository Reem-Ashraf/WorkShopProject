import 'package:flutter/material.dart';

Widget card({
  Widget? child,
  double? elevation,
  ShapeBorder? shape,
  required String text,
  bool? borderOnForeground,
  Color? shadowColor,
  EdgeInsetsGeometry? margin,
  Clip? clipBehavior,
})=>Card(
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
          Row(children: [
            Icon(Icons.alarm,),
            Text("2hrs",style: TextStyle(fontWeight:FontWeight.bold ),)
          ],)
        ],),
      SizedBox(height: 20,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text("Section DAy",
              style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
          ),
          SizedBox(width: 27,),
          Text("Start Time",
            style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
          SizedBox(width: 30,),
          Text("End Time",
            style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
        ],),
      SizedBox(height: 3,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            Icon(Icons.calendar_month_sharp),
            SizedBox(width: 2,),
            Text("Wednesday",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold
            ),),
          ],),
          Row(children: [
            Icon(Icons.punch_clock,color: Colors.green,),
            SizedBox(width: 2,),
            Text("12:00pm",style: TextStyle(fontWeight: FontWeight.bold),),
          ],),
          Row(children: [
            Icon(Icons.punch_clock,color: Colors.red,),
            SizedBox(width: 2,),
            Text("2:00pm",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
          ),
        ],
      )
    ],
    ),
  ),
  elevation: 5,
  shape:RoundedRectangleBorder (
borderRadius: BorderRadius.circular(15) ,
));



