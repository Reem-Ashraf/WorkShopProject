import 'package:flutter/material.dart';
import 'package:odcproject/faq.dart';
import 'package:odcproject/support.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 29,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: (){Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Faq()));},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FAQ"),
                  Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 35)
                ],
              ),
            ),
            Divider(thickness: 1,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Terms & Conditions"),
                Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 35)
              ],
            ),
            Divider(thickness: 1,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Our Parteners"),
                Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 35)
              ],
            ),
            Divider(thickness: 1,
              height: 30,
            ),
            InkWell(
              onTap: (){Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Support()));},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Support"),
                  Icon(Icons.keyboard_arrow_right,color:Colors.grey,size: 35,)
                ],
              ),
            ),
            Divider(thickness: 1,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Log Out"),
                Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 35)
              ],
            )

          ],
        ),
      ),
    );
  }
}

