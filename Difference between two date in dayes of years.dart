/*
  Visit https://dartpad.dev/?null_safety=true the online IDE for Dart language

  Problem: Difference between two date in days of years & checking if current
		   DateTime is in that range.

  Input:
	01 Nov 2021
	03 Nov 2021

  Output:
    flase
*/



import 'package:intl/intl.dart';

void main() {
//   var inputFormat = DateFormat('dd MMM yyyy');
//   var inputDate = inputFormat.parse('05 Nov 2021'); // <-- dd/MM 24H format

//   var outputFormat = DateFormat('dd MMM yyyy');
//   var outputDate = outputFormat.format(inputDate);
//   print(outputDate);
  
  
//   var now = DateTime.now();
//   print(DateFormat('dd MMM yyyy').format(now));
  
//   print(now.difference(inputDate).inHours);
  
  
  
  print(compareElements('01 Nov 2021', '03 Nov 2021'));
}


  bool compareElements(String s, String e){
    var now = DateTime.now();
    var dateInputFormat = DateFormat('dd MMM yyyy');
    // var dateOutputFormat = DateFormat('yyyy-MMM-dd');
    var startDate = dateInputFormat.parse(s); //'09 Aug 2021'
    var endDate = dateInputFormat.parse(e); //'09 Aug 2021'
    
    int startDay = int.parse(DateFormat("D").format(startDate));
    int endDay = int.parse(DateFormat("D").format(endDate));
    int today = int.parse(DateFormat("D").format(now));
    
//     var diff = endDate.difference(startDate).inDays;
//     var start = now.difference(startDate).inDays;
//     var end = endDate.difference(now).inDays;
     
//     print(diff);
//     print(start);
//     print(end);
    
//     print(diff - start);
//     print(diff - end);
    
    return startDay <= today && today <= endDay? true: false;
  }

