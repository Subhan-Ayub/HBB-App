import 'package:flutter/material.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivityScreen extends StatelessWidget {
  final ActivityController _ = Get.find<ActivityController>();

  ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIDataColors.greyColor,
     
      body: body(context),
    );
  }

  Widget body(context) {
    return SafeArea(
      child: SlidingUpPanel(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: const [BoxShadow(color: Colors.white)],
        minHeight: Get.height / 2.5,
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

            // Daily Exposures
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
                  InkWell(
                    onTap: () {
                      _.expandDailyExposure.value =
                          !_.expandDailyExposure.value;
                      _.dailyExposureHeight.value =
                          _.expandDailyExposure.value ? 200.0 : 0.0;
                    },
                    child: Text(
                      'Daily Exposures',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                scrollable: true,
                                title: Text('Event Nameee'),
                                content: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: TextField(
                                    controller: _.eventController,
                                  ),
                                ),
                                actions: [
                                  InkWell(
                                      onTap: () {
                               
                                        String title = _.eventController.text;

                                        DateTime dateTime = DateTime.parse(
                                            _.pselectedDay.toString());
   dateTime = dateTime.toLocal();

                                        String formattedDate =
                                            "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                               
                                        Navigator.of(context).pop();
                                  
                                      },
                                      child: Text('submit'))
                                ],
                              );
                            });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ).marginSymmetric(
                horizontal: Get.width * 0.04,
              ),
            ).paddingOnly(top: Get.height * 0.03),
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: _.dailyExposureHeight.value,
                color: Colors.green,
              ),
            ),

            // Meetings
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
                  InkWell(
                    onTap: () {
                      _.expandMeetings.value = !_.expandMeetings.value;
                      _.meetingsHeight.value =
                          _.expandMeetings.value ? 200.0 : 0.0;
                    },
                    child: Text(
                      'Weekly Meetings',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ).marginSymmetric(
                horizontal: Get.width * 0.04,
              ),
            ).paddingOnly(top: Get.height * 0.03),
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: _.meetingsHeight.value,
                color: Colors.green,
              ),
            ),

            // Conference Calls
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
                  InkWell(
                    onTap: () {
                      _.expandConference.value = !_.expandConference.value;
                      _.conferenceHeight.value =
                          _.expandConference.value ? 200.0 : 0.0;
                    },
                    child: Text(
                      'Conference Calls',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ).marginSymmetric(horizontal: Get.width * 0.04),
            ).paddingOnly(top: Get.height * 0.03),
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: _.conferenceHeight.value,
                color: Colors.green,
              ),
            ),

            // National/International Exposures
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
                  InkWell(
                    onTap: () {
                      _.expandNationalExposure.value =
                          !_.expandNationalExposure.value;
                      _.nationalExposureHeight.value =
                          _.expandNationalExposure.value ? 200.0 : 0.0;
                    },
                    child: Text(
                      'National/International',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * 0.035,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ).marginSymmetric(horizontal: Get.width * 0.04),
            ).paddingOnly(top: Get.height * 0.03),
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: _.nationalExposureHeight.value,
                color: Colors.green,
              ),
            ),

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
                  height: Get.height / 2.2,
                  child: Column(
                    children: [
                      Obx(
                        () => _.loder.value
                            ? Center(child: CircularProgressIndicator())
                            : TableCalendar(
                                headerStyle:
                                    HeaderStyle(formatButtonVisible: false),
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
                                calendarBuilders: CalendarBuilders(
                                  markerBuilder: (
                                    context,
                                    date,
                                    events,
                                  ) {
                                    DateTime dateTime =
                                        DateTime.parse(date.toString());

                                    dateTime = dateTime.toLocal();

                                    String formattedDate =
                                        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                                    for (var i = 0; i < _.checkkk.length; i++) {
                                      if (_.checkkk[i]['origdate'] ==
                                          formattedDate) {
                                        return Text(
                                          '●',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontSize: 8.0,
                                          ),
                                        );
                                      }
                                    }
                                  },
                                ),
                              ),
                      ),
                    ],
                  ),
                ).paddingOnly(top: Get.height * 0.02)
              ],
            )),
      ),
    );
  }
}
