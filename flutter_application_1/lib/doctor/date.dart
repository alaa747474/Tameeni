
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';




class date extends StatefulWidget {
  const date({Key? key}) : super(key: key);

  @override
  _dateState createState() => _dateState();
}

class _dateState extends State<date> {
  var list = [
          date2(),
          date2(),
          date1(),
          date2(),
          date2(),
  ];
  @override

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
          elevation: 0,
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
        automaticallyImplyLeading: true,
        actions: [
      Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 40,
        width: 60,
        child: const Image(
          image: AssetImage("assets/tameni.png"),
          fit: BoxFit.contain,
        ),
      ),








      ),]),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height *.9,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30, left: 15,top: 5,bottom: 5 ),
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Center(
                                    child: Text(
                                      "مواعيدى ",

                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                              fontSize: 26, fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30, left: 45,bottom: 0),
                                  child: TableCalendar(
                                    focusedDay: focusedDay,
                                    firstDay: DateTime(2022),
                                    lastDay: DateTime(2030),
                                    calendarFormat: format,
                                    onFormatChanged: (CalendarFormat _format) {
                                      setState(() {
                                        format = _format;
                                      });
                                    },
                                    startingDayOfWeek: StartingDayOfWeek.saturday,
                                    daysOfWeekVisible: true,
                                    onDaySelected:
                                        (DateTime selectDay, DateTime focusDay) {
                                      setState(() {
                                        selectedDay = selectDay;
                                        focusedDay = focusDay;
                                      });
                                    },
                                    rowHeight: 40,
                                    headerStyle: const HeaderStyle(
                                        leftChevronIcon: Icon(
                                          Icons.chevron_left,
                                          color: Colors.white,
                                        ),
                                        rightChevronIcon:  Icon(
                                          Icons.chevron_right,
                                          color: Colors.white,
                                        ),
                                        formatButtonTextStyle:
                                         TextStyle(color: Colors.white),
                                        titleTextStyle:
                                        TextStyle(color:Colors.white),
                                        headerPadding: EdgeInsets.all(0.1),
                                        headerMargin:
                                        EdgeInsets.symmetric(vertical: 15),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                topLeft: Radius.circular(20)),
                                            color: Color.fromRGBO(6, 187, 192, 1),),
                                        formatButtonVisible: false,
                                        titleCentered: true),
                                    calendarStyle: const CalendarStyle(
                                        todayDecoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:Color.fromRGBO(6, 187, 192, 1),
                                        ),
                                        weekendTextStyle:
                                        TextStyle(color:Color.fromRGBO(6, 187, 192, 1),),
                                        defaultTextStyle:
                                        TextStyle(color: Color.fromRGBO(6, 187, 192, 1),),
                                        selectedTextStyle:
                                        TextStyle(color: Colors.white,),
                                        isTodayHighlighted: false,
                                        selectedDecoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:Color.fromRGBO(6, 187, 192, 1),
                                        )),
                                    daysOfWeekStyle: const DaysOfWeekStyle(
                                      weekendStyle:
                                      TextStyle(color:Colors.teal),
                                      weekdayStyle:
                                      TextStyle(color:Colors.teal),
                                    ),
                                    selectedDayPredicate: (DateTime date) {
                                      return isSameDay(selectedDay, date);
                                    },
                                  ),
                                ),
                                // Center(child: GreyText(text: DateTime.now().toString(),)),
                                SingleChildScrollView(
                                  padding: const EdgeInsets.only(top: 40,),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      date2(),
                                      date2(),
                                      date1(),
                                      date2(),
                                      date2(),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: FlatButton(
                                    child:  Text(
                                      "إعادة جدولة ",

                                      style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),),
                                    ),
                                    color: const Color.fromRGBO(6, 187, 192, 1),
                                    textColor: Colors.white,

                                    minWidth: 260,
                                    height: 55,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    onPressed: () {
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) => signIn()));
                                    },
                                  ),
                                ),

                              ],
                            ),
                          ))),

//                       Container(
//                         width: MediaQuery.of(context).size.width*.6,
//
// height: 220,
//                         child: Swiper(
//
//                           itemCount: 5,
//                           layout: SwiperLayout.DEFAULT,
//                           autoplay: true,
//                           pagination: const SwiperPagination(
//                               builder: SwiperPagination.dots
//                           ),
//                           itemBuilder: (BuildContext context, int index) {
//                             return list[index];
//                           },
//                         ),
//
//                       ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         date2(),
//                         date2(),
//                         date1(),
//                         date2(),
//                         date2(),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 60,
//                   ),
//                   FlatButton(
//                     child: Text(
//                       'تسجيل الدخول',
//                       style: GoogleFonts.roboto(
//                         textStyle: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     color: const Color.fromRGBO(6, 187, 192, 1),
//                     textColor: Colors.white,
//                     minWidth: 260,
//                     height: 55,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15)),
//                     onPressed: () {
//                       // Navigator.push(context,
//                       //     MaterialPageRoute(builder: (context) => signIn()));
//                     },
//                   ),
                ],
              )),
        )
      ]),
    );
  }


}
