

/*import 'package:flutter/material.dart';

import 'colors.dart';

var brightness = MediaQuery.of(context as BuildContext).platformBrightness;

mixin context {
}
final isDarkMode = brightness == Brightness.dark;
final txtTheme = Theme.of(context as BuildContext).textTheme;
final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
final colour3 = isDarkMode ? Colors.black : Colors.white;
final colour4 = isDarkMode ? Colors.grey : Colors.white;
final size = MediaQuery.of(context as BuildContext).size;*/

//calendar
/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:untitled/src/constants/colors.dart';*/

/*class TrainersCalendar extends StatefulWidget {
  const TrainersCalendar({super.key});

  @override
  State<TrainersCalendar> createState() => _TrainersCalendarState();
}

class _TrainersCalendarState extends State<TrainersCalendar> {
  CalendarFormat _calendarFormatMonth = CalendarFormat.month;
  DateTime focusedCurrentDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
    final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
    final colour3 = isDarkMode ? Colors.black : Colors.white;
    final colour4 = isDarkMode ? Colors.grey : Colors.white;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime(2023),
                lastDay: DateTime(2200),
                focusedDay: focusedCurrentDay,
                calendarFormat: _calendarFormatMonth,
                startingDayOfWeek: StartingDayOfWeek.monday,
                rowHeight: 50,
                daysOfWeekHeight: 50,
                headerStyle: HeaderStyle(
                  titleTextStyle: GoogleFonts.montserrat(
                    color: colour1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  formatButtonTextStyle: GoogleFonts.montserrat(
                    color: colour2,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  formatButtonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: colour1, width: 2),
                  ),
                  leftChevronIcon: Icon(
                    Icons.arrow_back_ios_new,
                    color: colour2,
                    size: 20,
                  ),
                  rightChevronIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: colour2,
                    size: 20,
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekendStyle: GoogleFonts.poppins(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                  weekdayStyle: GoogleFonts.poppins(
                    color: colour3,
                    fontSize: 18,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  weekendTextStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  defaultTextStyle: GoogleFonts.poppins(
                    color: colour3,
                    fontSize: 18,
                  ),
                  todayDecoration: BoxDecoration(
                    color: colour2,
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: GoogleFonts.poppins(
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: colour1,
                    shape: BoxShape.circle,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      focusedCurrentDay = focusedDay;
                    });
                  }
                },
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },

                onFormatChanged: (format) {
                  if(_calendarFormatMonth!=format){
                    setState(() {
                      _calendarFormatMonth=format;
                    });
                  }
                },onPageChanged: (focusedDay) {
                  focusedDay=focusedDay;
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}*/

//schedule
/*import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../constants/colors.dart';*/

/*class TrainersCalendar extends StatefulWidget {
  const TrainersCalendar({super.key});

  @override
  State<TrainersCalendar> createState() => _TrainersCalendarState();
}

class _TrainersCalendarState extends State<TrainersCalendar> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final txtTheme = Theme.of(context).textTheme;
    final colour1 = isDarkMode ? AppSecondaryColor : AppPrimaryColor;
    final colour2 = isDarkMode ? AppPrimaryColor : AppSecondaryColor;
    final colour3 = isDarkMode ? Colors.black : Colors.white;
    final colour4 = isDarkMode ? Colors.grey : Colors.white;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.week,
          firstDayOfWeek: 1,
          dataSource: TrainersSchedule(getAppointments()),
          // initialSelectedDate: DateTime(2023, 11, 23, 02, 00),
        ),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 17, 0, 0);
  final DateTime endTime = startTime.add(const Duration(
    hours: 1,
  ));
  var until = startTime.add(Duration(days: 5));
  meetings.add(
    Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: "Reserved",
      color: Colors.red,
      recurrenceRule: "FREQ=WEEKLY;Count=2;BYDAY=MO,WE,TH;BYMONTH=2",
      isAllDay: false,
    ),
  );
  return meetings;
}

class TrainersSchedule extends CalendarDataSource {
  TrainersSchedule(List<Appointment> source) {
    appointments = source;
  }
}*/