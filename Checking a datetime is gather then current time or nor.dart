/*
  Visit https://dartpad.dev/?null_safety=true the online IDE for Dart language

  Problem: Checking a datetime is gather then current time or not

  Input:
	17-10-2021 22:00

  Output:
    2021-10-17 22:00:00.000
	2021-10-17 21:50:22.806
	-577
	completed
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  DateTime startDateTime = DateFormat("dd-MM-yyyy HH:mm").parse("17-10-2021 22:00");
  DateTime nowDateTime = DateTime.now();
  int duration = nowDateTime.difference(startDateTime).inSeconds;
  
  print(startDateTime);
  print(nowDateTime);
  print(duration);
  
  if(duration <= 0){
    print("completed");
  }else{
    print('not completed');
  }
}
