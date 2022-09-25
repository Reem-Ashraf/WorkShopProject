import 'package:flutter/material.dart';
import 'package:odcproject/view/componant/pages/Authonication/login_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(height: 100),
                Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: LinearPercentIndicator(
                  width: 300,
                  lineHeight: 10,
                  percent: 1,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  barRadius: Radius.circular(50),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.deepOrange,
                  animation: true,
                  onAnimationEnd: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Login()),
                    );
                  },
                  animationDuration: 2000,

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


