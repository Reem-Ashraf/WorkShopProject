import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcproject/view/componant/core/card.dart';
import 'package:odcproject/view_model/lecture/lecture_cubit.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..getData(),
      child: BlocConsumer<LectureCubit, LectureState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureCubit myCubit = LectureCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(onPressed: (){
          Navigator.pop(context);
          }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.orange[600],size: 35,),),
                title: Text("Lectures", style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.filter_alt, color: Colors.orange[600], size: 35,),
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: myCubit.lec == null ? Center(
                  child: Text(
                    "Loading ..... "
                  ),
                ): ListView.builder(
                   itemCount: myCubit.lec!.data!.length,
                   itemBuilder: (context, index) {
                   return  card(text: myCubit.lec!.data![index].lectureSubject.toString());
                 },),
              )
          );
        },
      ),
    );;
  }
}
