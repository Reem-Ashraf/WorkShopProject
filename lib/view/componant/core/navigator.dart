import 'package:flutter/material.dart';

void navigateTo(BuildContext context,Widget Screen){
Navigator.push(
context,
MaterialPageRoute(builder: (context,) =>  Screen ));}