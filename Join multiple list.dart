/*
  Visit https://dartpad.dev/?null_safety=true the online IDE for Dart language

  Problem: Join multiple list into one
  # Inspired by python.

  Input:
	none

  Output:
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  List listOne = ['1', '2', '3'];
  List listTwo = ['4', '5', '6'];
  List listThree = [7, 8, 9];
  List resultList = listOne + listTwo + listThree;
  print(resultList);
}
