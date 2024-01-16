// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/myGoalsController.dart';
import 'package:hbb/src/utils/routes/routes.dart';

class MyGoalScreen extends StatelessWidget {
  final MyGoalsController _ = Get.put(MyGoalsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Goals",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: Get.width * .06, fontWeight: FontWeight.bold),
                ).marginOnly(top: Get.height * .04),
                Text(
                  "Use this area to view the goals you set for yourself with your business. You may update these any time by clicking 'edit'. These goals are unique to you .This infromation is not send to anyone else and it is not possible for your coach or any of your Accountability Partners to view them. Entering yous goals here provides you with a easy way to measure how well you're doing, as they work with the rest of your HBB system to create reports that help to track the actual impact of your business activities verses the goals you have set",
                  style: TextStyle(
                      fontSize: Get.width * .0314, fontWeight: FontWeight.w500),
                ).marginSymmetric(vertical: Get.height * .02),
                Text(
                  'Why Are You Building your Business ?',
                  style: TextStyle(
                      fontSize: Get.width * .033, fontWeight: FontWeight.bold),
                ).marginSymmetric(vertical: Get.height * .002),
                Text(
                  'Click Here to See Graph of your Perfomance',
                  style: TextStyle(
                      fontSize: Get.width * .033,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ).marginSymmetric(vertical: Get.height * .002),
                Container(
                  width: Get.width,
                  // height: Get.height * .02,
                  color: Colors.grey.shade300,
                  child: Text(
                    'To travel more, QUIT WORKING, pay off debt and spend more time with my Grandkids while earning extra income to help them through college.Play more golf with my kids and Grandkids..Plus HELP MANY OTHER BUSINESS PARTNERS \nDO THE SAME!',
                    style: TextStyle(
                        fontSize: Get.width * .033,
                        // color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                      .marginSymmetric(vertical: Get.height * .002)
                      .paddingSymmetric(
                          horizontal: Get.width * .025,
                          vertical: Get.height * .01)
                      .paddingOnly(bottom: Get.height * .02),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'edit',
                        style: TextStyle(
                            fontSize: Get.width * .03,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'What income do you hope to acheive ?',
                          style: TextStyle(
                              fontSize: Get.width * .03,
                              // color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ).marginSymmetric(horizontal: Get.width * .02),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next 30 days:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '1000',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next 6 Months:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '12000',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next one year:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                // cursorHeight: Get.height * .001,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '30000',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: Get.width * .02),
                    Container(
                      width: Get.width,
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Actual Income: \n\$575.65",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Actual Income: \n\$5,549.58",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Actual Income: \n\$23,599.87",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .01),
                    )
                        .marginSymmetric(vertical: Get.height * .01)
                        .paddingSymmetric(horizontal: Get.width * .02),
                    Divider(),
                  ],
                ),
                //
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'How Many Hours will you commits ?',
                          style: TextStyle(
                              fontSize: Get.width * .03,
                              // color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ).marginSymmetric(horizontal: Get.width * .02),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Days:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '3',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Week:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '15',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Month:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '61',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: Get.width * .02),
                    Container(
                      width: Get.width,
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daily Average: \n0.61hrs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Weekly Average: \n4.27hrs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Monthly Average: \n18.57hrs",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .01),
                    )
                        .marginSymmetric(vertical: Get.height * .01)
                        .paddingSymmetric(horizontal: Get.width * .02),
                    Divider(),
                  ],
                ),
                //
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'How many exposures do you plan to make ?',
                          style: TextStyle(
                              fontSize: Get.width * .03,
                              // color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ).marginSymmetric(horizontal: Get.width * .02),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Days:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '2',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Week:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              // color: Colors.red,
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '14',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Each Month:',
                              style: TextStyle(
                                  fontSize: Get.width * .025,
                                  // color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: Get.width / 4,
                              height: Get.height * .04,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: '60',
                                  // text
                                ),
                              ).paddingSymmetric(horizontal: Get.width * .01),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: Get.width * .02),
                    Container(
                      width: Get.width,
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daily Average: \n0.31",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Weekly Average: \n2.20",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Monthly Average: \n9.57",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .01),
                    )
                        .marginSymmetric(vertical: Get.height * .01)
                        .paddingSymmetric(horizontal: Get.width * .02),
                    Divider(),
                  ],
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'How many Customers do you plan on acquiring ?',
                          style: TextStyle(
                              fontSize: Get.width * .03,
                              // color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ).marginSymmetric(horizontal: Get.width * .02),
                      ],
                    ),
                    Container(
                      width: Get.width * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Each Week:',
                                style: TextStyle(
                                    fontSize: Get.width * .025,
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: Get.width / 4,
                                height: Get.height * .04,
                                // alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                // color: Colors.red,
                                child: TextField(
                                  readOnly: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: Get.width * .025,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    hintText: '1',
                                    // text
                                  ),
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              )
                            ],
                          ),
                          //
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Each Month:',
                                style: TextStyle(
                                    fontSize: Get.width * .025,
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: Get.width / 4,
                                height: Get.height * .04,
                                // alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                // color: Colors.red,
                                child: TextField(
                                  readOnly: true,
                                  style: TextStyle(
                                    fontSize: Get.width * .025,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    hintText: '4',
                                    // text
                                  ),
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              )
                            ],
                          ),
                          //
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .02),
                    ),
                    Container(
                      width: Get.width * .56,
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Weekly Average: \n0.60",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Monthly Average: \n2.60",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .01),
                    )
                        .marginSymmetric(vertical: Get.height * .01)
                        .paddingSymmetric(horizontal: Get.width * .02),
                    Divider(),
                  ],
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'How many Distributors do you plan to sponser ?',
                          style: TextStyle(
                              fontSize: Get.width * .03,
                              // color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ).marginSymmetric(horizontal: Get.width * .02),
                      ],
                    ),
                    Container(
                      width: Get.width * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Each Week:',
                                style: TextStyle(
                                    fontSize: Get.width * .025,
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: Get.width / 4,
                                height: Get.height * .04,
                                // alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                // color: Colors.red,
                                child: TextField(
                                  readOnly: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: Get.width * .025,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    hintText: '1',
                                    // text
                                  ),
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              )
                            ],
                          ),
                          //
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Each Month:',
                                style: TextStyle(
                                    fontSize: Get.width * .025,
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: Get.width / 4,
                                height: Get.height * .04,
                                // alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                // color: Colors.red,
                                child: TextField(
                                  readOnly: true,
                                  style: TextStyle(
                                    fontSize: Get.width * .025,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.black),
                                    hintText: '4',
                                    // text
                                  ),
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              )
                            ],
                          ),
                          //
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .02),
                    ),
                    Container(
                      width: Get.width * .56,
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Weekly Average: \n0.42",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Monthly Average: \n1.85",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: Get.width * .025,
                              // color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: Get.width * .01),
                    )
                        .marginSymmetric(vertical: Get.height * .01)
                        .paddingSymmetric(horizontal: Get.width * .02),
                    Divider(),
                  ],
                ),
                //
                Text(
                  'When will you acheive the following position ?',
                  style: TextStyle(
                      fontSize: Get.width * .03,
                      // color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                //
                SizedBox(
                  height: Get.height * .01,
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rank Up To Postion No. 1',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                // color: Colors.blue,
                                fontWeight: FontWeight.w500)),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: Get.height * .035,

                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          // color: Colors.red,
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(
                              fontSize: Get.width * .03,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Get.height * .0115,
                              ),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Manager 8-10-21',
                              // text
                            ),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        )
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: Get.width * .02),
                //
                SizedBox(
                  height: Get.height * .01,
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rank Up To Postion No. 2',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                // color: Colors.blue,
                                fontWeight: FontWeight.w500)),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: Get.height * .035,

                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          // color: Colors.red,
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(
                              fontSize: Get.width * .03,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Get.height * .0115,
                              ),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Director 8-20-21',
                              // text
                            ),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        )
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: Get.width * .02),
                //
                SizedBox(
                  height: Get.height * .01,
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rank Up To Postion No. 3',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                // color: Colors.blue,
                                fontWeight: FontWeight.w500)),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'edit',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: Get.height * .035,

                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          // color: Colors.red,
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(
                              fontSize: Get.width * .03,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: Get.height * .0115,
                              ),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Executive 8-30-21',
                              // text
                            ),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        )
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: Get.width * .02),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: Get.width / 1 / 4,
                      child: GestureDetector(
                        onTap: () {
                          Get.offAndToNamed(Routes.programdata);
                        },
                        child: Text(
                          'Close',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.red, fontSize: Get.width * .035),
                        ),
                      ),
                    ).marginSymmetric(vertical: Get.height * .01),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
