/*
  Visit https://dartpad.dev/?null_safety=true the online IDE for Dart language

  Problem: Checking a given local time is between two local time 

  Time Range: 
    Start Time • 08:30
    End Time   • 10:30

  Given Time:
    Time       • 09:30

  Output:
    If Given Time is between Time Range print("active")
    Else print("inactive")
*/

/*
Solution:

  Step • One:
    #Add this package into your projects pubspec.yaml:
      #https://pub.dev/packages/intl
      dependencies:
      flutter:
        sdk: flutter
      intl: ^0.17.0

  Step • Two:
    #Parse 'Time Range' and 'Given Time':

      var startDateTime = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateFormat("hh:mm").parse('08:30'));
      var endDateTime = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateFormat("hh:mm").parse('08:31'));
      var currentDateTime = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateFormat("hh:mm").parse(DateTime.now().toString().substring(11,16)));

      print(startDateTime);
      print(currentDateTime);
      print(endDateTime);

      I/flutter (18842): 1970-01-01 08:30:00
      I/flutter (18842): 1970-01-01 08:44:00
      I/flutter (18842): 1970-01-01 08:31:00

  Step • Three:
    #Follow main method:

*/

void main() {
  String startDateTime = "1970-01-01 08:30:00";
  String endDateTime = "1970-01-01 10:30:00";
  String currentDateTime = "1970-01-01 09:30:00";

  int endTime_startTime = DateTime.parse(endDateTime)
      .difference(DateTime.parse(startDateTime))
      .inSeconds;

  int endTime_currentTime = DateTime.parse(endDateTime)
      .difference(DateTime.parse(currentDateTime))
      .inSeconds;

  int startTime_currentTime = DateTime.parse(currentDateTime)
      .difference(DateTime.parse(startDateTime))
      .inSeconds;

  print("EndTime - StartTime = $endTime_startTime");
  print("EndTime - CurrentTime = $endTime_currentTime");
  print("StartTime - CurrentTime = $startTime_currentTime");

  if ((startTime_currentTime >= 0 &&
          startTime_currentTime < endTime_startTime) &&
      (endTime_currentTime <= endTime_startTime && endTime_currentTime > 0)) {
    print("active");
  } else {
    print("inactive");
  }
}

/*
  TestCase • One:
    Input:
      startDateTime = "1970-01-01 08:30:00";
      endDateTime = "1970-01-01 10:30:00";
      currentDateTime = "1970-01-01 09:30:00";

    Output:
      EndTime - StartTime = 7200
      EndTime - CurrentTime = 3600
      StartTime - CurrentTime = 3600
      active

  TestCase • Two:
    Input:
      startDateTime = "1970-01-01 08:30:00";
      endDateTime = "1970-01-01 10:30:00";
      currentDateTime = "1970-01-01 17:30:00";

    Output:
      EndTime - StartTime = 7200
      EndTime - CurrentTime = -25200
      StartTime - CurrentTime = 32400
      inactive
*/
