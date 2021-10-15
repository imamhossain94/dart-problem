/*
  Visit https://dartpad.dev/?null_safety=true the online IDE for Dart language

  Problem: Difference between two time in 0h 0m 0s

  Input:
	5:00PM
	6:30PM

  Output:
    1h 30m 0s
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  String startTime = "5:00PM";
  String endTime = "6:30PM";
  
  DateTime startDateTime = DateFormat("h:mma").parse(startTime);
  DateTime endDateTime = DateFormat("h:mma").parse(endTime);
  
  Duration duration = endDateTime.difference(startDateTime);
  
  String durationTime = "${duration.inHours}h ${duration.inMinutes.remainder(60)}m ${(duration.inSeconds.remainder(60))}s"; 
  
  print(durationTime);
}
