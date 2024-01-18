import 'package:flutter/material.dart';
// import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable

class Event {
  final title;
  final date;
  Event(
    String text, {
    this.title,
    this.date,
  });
}

// class ActivityScreen extends StatelessWidget {
//   ActivityController _ = Get.find<ActivityController>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text('Demo'),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 scrollable: true,
//                 title: Text('Event Name'),
//                 content: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextField(
//                     controller: _.eventController,
//                   ),
//                 ),
//                 actions: [
//                   InkWell(
//                       onTap: () {
//                         _.events.addAll({
//                           _.pselectedDay!: [
//                             Event(
//                               _.eventController.value.text,
//                             )
//                           ]
//                         });
//                         // print('text: ${_.eventController.value.text}');
//                         // print('${_.events}');
//                         Navigator.of(context).pop();
//                         _.selectedEvents.value =
//                             _.getEventsForDay(_.pselectedDay!);
//                         // print('selectedEvent ${_.selectedEvents}');
//                       },
//                       child: Text('submit'))
//                 ],
//               );
//             });
//       }),
//       body:
//       Column(
//         children: [
//           Obx(
//             () => TableCalendar(
//               firstDay: DateTime.utc(2010, 10, 16),
//               lastDay: DateTime.utc(2030, 3, 14),
//               focusedDay: _.pfocusedDay.value,
//               selectedDayPredicate: (day) => isSameDay(_.pselectedDay, day),
//               calendarFormat: _.calendarFormat,
//               startingDayOfWeek: StartingDayOfWeek.monday,
//               onDaySelected: _.onDaySelected,
//               eventLoader: _.getEventsForDay,
//               // calendarStyle: CalendarStyle(outsideDaysVisible: false),
//               onFormatChanged: (format) {
//                 if (_.calendarFormat != format) {
//                   _.calendarFormat = format;
//                 }
//               },
//               onPageChanged: (focusedDay) {
//                 _.pfocusedDay.value = focusedDay;
//               },
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: ValueListenableBuilder(
//                 valueListenable: _.selectedEvents,
//                 builder: (context, value, _) {
//                   return ListView.builder(
//                       itemCount: value.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           margin: EdgeInsets.symmetric(vertical: 8),
//                           decoration: BoxDecoration(
//                               border: Border.all(),
//                               borderRadius: BorderRadius.circular(12)),
//                           child: ListTile(
//                             onTap: () {
//                               // print(_);
//                             },
//                             title: Text('${value[index]}'),
//                           ),
//                         );
//                       });
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }

class ActivityScreen extends StatelessWidget {
  final ActivityController _ = Get.find<ActivityController>();

  ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIDataColors.greyColor,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: Text('Event Name'),
                content: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: _.eventController,
                  ),
                ),
                actions: [
                  InkWell(
                      onTap: () {
                        _.events.addAll({
                          _.pselectedDay!: [
                            Event(
                              _.eventController.value.text,
                            )
                          ]
                        });
                        // print('text: ${_.eventController.value.text}');
                        // print('${_.events}');
                        Navigator.of(context).pop();
                        _.selectedEvents.value =
                            _.getEventsForDay(_.pselectedDay!);
                        // print('selectedEvent ${_.selectedEvents}');
                      },
                      child: Text('submit'))
                ],
              );
            });
      }),
      body: body(),
    );
  }

  Widget body() {
    return SlidingUpPanel(
      // color: Color.fromARGB(241, 255, 255, 255),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      boxShadow: const [BoxShadow(color: Colors.white)],
      minHeight: Get.height / 2.1,
      maxHeight: Get.height,
      panel: Column(
        children: [
          Container(
            width: Get.width * 0.2,
            height: Get.height * 0.006,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 222, 222),
                borderRadius: BorderRadius.circular(100)),
          ).paddingOnly(top: 10),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [UIDataColors.commonColor, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.2, 2.9],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Row(
              children: [
                Text('Daily Exposures'),
              ],
            ),
            height: 50,
          ).paddingOnly(top: Get.height * 0.03)

          // Container(
          //   height: 100,
          //   child: ValueListenableBuilder(
          //       valueListenable: _.selectedEvents,
          //       builder: (context, value, _) {
          //         return ListView.builder(
          //             itemCount: value.length,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 decoration: BoxDecoration(
          //                     border: Border.all(),
          //                     borderRadius: BorderRadius.circular(12)),
          //                 child: ListTile(
          //                   onTap: () {
          //                     // print(_);
          //                   },
          //                   title: Text('${value[index]}'),
          //                 ),
          //               );
          //             });
          //       }),
          // )

          //   SizedBox(
          //     height: Get.height / 1.1,
          //     width: Get.width / 1.1,
          //     child: ListView.builder(
          //         itemCount: _.data.length,
          //         itemBuilder: (context, index) {
          //           return Row(
          //             children: [
          //               Container(
          //                 width: Get.width / 1.1,
          //                 decoration: const BoxDecoration(
          //                     // color: Color.fromARGB(255, 117, 88, 183),
          //                     border: Border(
          //                         bottom: BorderSide(
          //                             color: UIDataColors.greyColor, width: 2))),
          //                 child: Row(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     // Icon Container
          //                     Container(
          //                       width: Get.width * 0.1,
          //                       height: Get.height * 0.05,
          //                       decoration: BoxDecoration(
          //                           color: Color(_.data[index]['color']),
          //                           borderRadius: BorderRadius.circular(100)),
          //                       child: const Icon(
          //                         Icons.temple_hindu_sharp,
          //                         color: Colors.white,
          //                       ),
          //                     ),

          //                     Container(
          //                       child: Row(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Column(
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.start,
          //                             // mainAxisAlignment: MainAxisAlignment.center,
          //                             children: [
          //                               // Heading Container
          //                               Container(
          //                                 child: Text(
          //                                   '${_.data[index]['heading']}',
          //                                   style: TextStyle(
          //                                       fontSize: Get.width * 0.04),
          //                                 ),
          //                               ).paddingSymmetric(
          //                                   vertical: Get.height * 0.01),
          //                               // Date Container
          //                               Container(
          //                                 child: Row(
          //                                   children: [
          //                                     const Icon(
          //                                       Icons.calendar_month_outlined,
          //                                       color: Colors.grey,
          //                                     ).paddingOnly(
          //                                         right: Get.width * 0.015),
          //                                     Text(
          //                                       '${_.data[index]['date']}',
          //                                       style: const TextStyle(
          //                                           color: Colors.grey,
          //                                           fontSize: 16),
          //                                     ),
          //                                   ],
          //                                 ),
          //                               ),
          //                             ],
          //                           ).paddingOnly(left: Get.width * 0.02),
          //                           // Time Container
          //                           // Container(
          //                           //   width: 20,
          //                           //   height: 20,
          //                           //   color: Color.fromARGB(255, 120, 19, 65),
          //                           // ),
          //                         ],
          //                       ),
          //                     )
          //                   ],
          //                 ).paddingSymmetric(vertical: Get.height * 0.012),
          //               )
          //             ],
          //           );
          //         }),
          //   ).paddingOnly(top: 20)
        ],
      ).marginSymmetric(horizontal: Get.width * 0.05),

      body: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              Container(
                width: Get.width / 1.1,
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Activity Calendar',
                      style: TextStyle(
                        fontSize: Get.width * 0.055,
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Ink(
                            height: Get.height * 0.04,
                            width: Get.width * 0.13,
                            decoration: _.isCalendar.value
                                ? const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(100),
                                            right: Radius.circular(100))),
                                    color: UIDataColors.commonColor,
                                  )
                                : null,
                            child: IconButton(
                                onPressed: () {
                                  _.isCalendar.value = true;
                                  _.isFormatlist.value = false;
                                },
                                icon: Icon(
                                  Icons.date_range_outlined,
                                  size: Get.width * 0.055,
                                  color: _.isCalendar.value
                                      ? Colors.white
                                      : Colors.grey,
                                )),
                          ),
                        ),
                        Obx(
                          () => Ink(
                            height: Get.height * 0.04,
                            width: Get.width * 0.13,
                            decoration: _.isFormatlist.value
                                ? const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(100),
                                            right: Radius.circular(100))),
                                    color: UIDataColors.commonColor,
                                  )
                                : null,
                            child: IconButton(
                                onPressed: () {
                                  _.isFormatlist.value = true;
                                  _.isCalendar.value = false;
                                },
                                icon: Icon(
                                  Icons.format_list_bulleted,
                                  size: Get.width * 0.055,
                                  color: _.isFormatlist.value
                                      ? Colors.white
                                      : Colors.grey,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width / 1.1,
                height: Get.height / 2.5,
                child: Column(
                  children: [
                    Obx(
                      () => TableCalendar(
                        headerStyle: HeaderStyle(formatButtonVisible: false),
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                              color: UIDataColors.commonColor,
                              shape: BoxShape.circle),
                          todayDecoration: BoxDecoration(
                            color: Color.fromARGB(133, 242, 25,
                                79), // Set your desired color for today's date
                            shape: BoxShape.circle,
                          ),
                        ),
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: _.pfocusedDay.value,
                        selectedDayPredicate: (day) =>
                            isSameDay(_.pselectedDay, day),
                        calendarFormat: _.calendarFormat,
                        startingDayOfWeek: StartingDayOfWeek.monday,
                        onDaySelected: _.onDaySelected,
                        eventLoader: _.getEventsForDay,
                        onFormatChanged: (format) {
                          if (_.calendarFormat != format) {
                            _.calendarFormat = format;
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _.pfocusedDay.value = focusedDay;
                        },
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Expanded(
                    //   child: ValueListenableBuilder(
                    //       valueListenable: _.selectedEvents,
                    //       builder: (context, value, _) {
                    //         return ListView.builder(
                    //             itemCount: value.length,
                    //             itemBuilder: (context, index) {
                    //               return Container(
                    //                 margin: EdgeInsets.symmetric(vertical: 8),
                    //                 decoration: BoxDecoration(
                    //                     border: Border.all(),
                    //                     borderRadius:
                    //                         BorderRadius.circular(12)),
                    //                 child: ListTile(
                    //                   onTap: () {
                    //                     // print(_);
                    //                   },
                    //                   title: Text('${value[index]}'),
                    //                 ),
                    //               );
                    //             });
                    //       }),
                    // )
                  ],
                ),

                //  SfDateRangePicker(
                //   view: DateRangePickerView.month,
                //   // enablePastDates: false,
                //   headerStyle: DateRangePickerHeaderStyle(
                //     textAlign: TextAlign.left,
                //     textStyle: TextStyle(
                //         fontSize: Get.width * 0.05,
                //         fontWeight: FontWeight.w500),
                //   ),
                //   headerHeight: 80,
                //   selectionColor: UIDataColors.commonColor,
                //   onSelectionChanged: _.onSelectionChanged,
                //   selectionTextStyle: TextStyle(
                //     fontSize: Get.width * 0.05,
                //     fontWeight: FontWeight.w500,
                //   ),
                //   selectionMode: DateRangePickerSelectionMode.single,
                //   // initialSelectedRange: PickerDateRange(
                //   //   DateTime.now().subtract(const Duration(days: 4)),
                //   //   DateTime.now().add(const Duration(days: 3)),
                //   // ),
                //   monthCellStyle: DateRangePickerMonthCellStyle(
                //       textStyle: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontSize: Get.width * 0.05,
                //   )),
                // ),
              ).paddingOnly(top: Get.height * 0.02)
            ],
          )).paddingOnly(top: Get.height * 0.07),
    );
  }
}
