import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/notifications_details/medication_details.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

import 'package:table_calendar/table_calendar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final Stream<QuerySnapshot> medication =
      FirebaseFirestore.instance.collection('medication').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            padding:
                const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 15),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyColors().primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/m01.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: MyColors().white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 15, top: 20),
                  child: ListView(
                    children: [
                      GreyText(text: DateTime.now().toString()),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 45),
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
                          headerStyle: HeaderStyle(
                              leftChevronIcon: Icon(
                                Icons.chevron_left,
                                color: MyColors().white,
                              ),
                              rightChevronIcon: Icon(
                                Icons.chevron_right,
                                color: MyColors().white,
                              ),
                              formatButtonTextStyle:
                                  TextStyle(color: MyColors().white),
                              titleTextStyle:
                                  TextStyle(color: MyColors().white),
                              headerPadding: const EdgeInsets.all(0.1),
                              headerMargin:
                                  const EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  color: MyColors().primaryColor),
                              formatButtonVisible: false,
                              titleCentered: true),
                          calendarStyle: CalendarStyle(
                              todayDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors().primaryColor,
                              ),
                              weekendTextStyle:
                                  TextStyle(color: MyColors().primaryColor),
                              defaultTextStyle:
                                  TextStyle(color: MyColors().primaryColor),
                              selectedTextStyle:
                                  TextStyle(color: MyColors().white),
                              isTodayHighlighted: false,
                              selectedDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors().primaryColor,
                              )),
                          daysOfWeekStyle: DaysOfWeekStyle(
                            weekendStyle:
                                TextStyle(color: MyColors().primaryColor),
                            weekdayStyle:
                                TextStyle(color: MyColors().primaryColor),
                          ),
                          selectedDayPredicate: (DateTime date) {
                            return isSameDay(selectedDay, date);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const BlackText(text: 'اليوم'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          StreamBuilder<QuerySnapshot>(
                            stream: medication,
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return const BlackText(
                                    text: 'something went wrong');
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const BlackText(text: 'Loading');
                              }
                              final data = snapshot.requireData;
                              return SingleChildScrollView(
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: 308,
                                  child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    primary: false,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MedicationDetails(
                                                          doc: snapshot
                                                              .requireData
                                                              .docs[index])));
                                        },
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SmallGreyText(
                                                  text:
                                                      '${data.docs[index]['firsttime']}',
                                                  size: 16,
                                                ),
                                                SmallGreyText(
                                                  text:
                                                      '${data.docs[index]['secondtime']}',
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            MedicationContainer(
                                                image: 'assets/panadol.jpg',
                                                text:
                                                    '${data.docs[index]['name']}',
                                                text2:
                                                    '${data.docs[index]['description']}'),
                                          ],
                                        ),
                                      );
                                    },
                                    itemCount: data.size,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ))),
      ],
    ));
  }
}
