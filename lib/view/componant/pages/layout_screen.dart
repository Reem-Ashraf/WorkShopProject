import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcproject/view_model/layout/laout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LaoutCubit(),
  child: BlocConsumer<LaoutCubit, LaoutState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    LaoutCubit myCubit =  LaoutCubit.get(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: myCubit.pages[myCubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: (Icon(Icons.home_filled,)),label: 'Home'),
          BottomNavigationBarItem(icon: (Icon(Icons.newspaper,)),label: 'News'),
          BottomNavigationBarItem(icon: (Icon(Icons.settings,)),label: 'Setting')
        ],
          currentIndex:myCubit.currentIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          onTap: (value){
            myCubit.changeIndex(value);
          },
        ),


      ),
    );
  },
),
);
  }
}
