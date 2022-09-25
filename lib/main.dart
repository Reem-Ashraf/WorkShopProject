import 'package:flutter/material.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/note/related/add_note.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/note/notes.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/calender.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/finals.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/home_screen.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/lecture.dart';
import 'package:odcproject/support.dart';
import 'package:odcproject/view/componant/pages/Authonication/login_screen.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/midterm.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/news_screen.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/sections.dart';
import 'package:odcproject/settings.dart';
import 'package:odcproject/view/componant/pages/Authonication/signup.dart';
import 'package:odcproject/splach_screen.dart';
import 'package:odcproject/view/componant/pages/layout_screen.dart';

import 'network/dio_helper.dart';

void main() async{
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}


