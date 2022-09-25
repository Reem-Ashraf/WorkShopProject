import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
        title: Text("Midterms", style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,),
          body:SfCalendar(
            cellBorderColor: Colors.orange,
            view: CalendarView.month,
            // dataSource: MeetingDataSource(_getDataSource()),
            monthViewSettings: MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,

            ),

          )
      ),
    );
  }
}
