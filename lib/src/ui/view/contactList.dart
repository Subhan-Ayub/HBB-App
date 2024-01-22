// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import '../../controllers/contactlistController.dart';

class ContactListScreen extends StatelessWidget {
  final ContactListController _ = Get.put(ContactListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "My Contact List",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .05, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Click here to add new contact",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .025,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ).marginOnly(top: Get.height * .04),
             
              Text(
                "This is a list of your contacts. \nYou can click on a name to edit the details or initiate a Daily Exposure or a National/International Exposure for today, or click on an email address to email them directly. \nSort by Name or Relation Level by clicking on the column headers.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .032, fontWeight: FontWeight.w400),
              ).marginOnly(top: Get.height * .02),
              Text(
                "Key:",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .032, fontWeight: FontWeight.bold),
              ),
              //
              Row(
                children: [
                  Text(
                    "Red",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        color: Colors.red,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " = 7-10 People you look up to",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //
              Row(
                children: [
                  Text(
                    "Green",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        color: Colors.green,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " = 4-6 People who are you peers",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //
              Row(
                children: [
                  Text(
                    "blue",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        color: Colors.blue,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " = 1-3 People who look up to you",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: Get.width * .032,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              //
              Container(
                width: Get.width,
                // height: Get.height * .15,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width / 6,
                          height: Get.height * .03,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Name',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .018),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),
                        //
                        Container(
                          width: Get.width / 6,
                          height: Get.height * .03,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Phone',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .018),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),
                        //
                        Container(
                          width: Get.width / 3.2,
                          height: Get.height * .03,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .018),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),
                        //
                        Container(
                          width: Get.width / 10,
                          height: Get.height * .03,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Relation',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .018),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),
                        //
                        Container(
                          width: Get.width / 6.2,
                          height: Get.height * .03,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Action',
                            // textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: Get.width * .018,
                              fontWeight: FontWeight.w500,
                            ),
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),

                        //
                      ],
                    ),
                    //
                    Container(
                      color: Colors.blue.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Larry Christian',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(732) 336-0291',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 3.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'sixfigurechristian@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 10,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '1',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Edit',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Delete',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .02),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                    Container(
                      color: Colors.green.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Larry Christian',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(732) 336-0291',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 3.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'sixfigurechristian@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 10,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '5',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Edit',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Delete',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .02),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                    Container(
                      color: Colors.red.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Larry Christian',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(732) 336-0291',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 3.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'sixfigurechristian@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 10,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '9',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: Get.width * .018),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 6.2,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Edit',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Delete',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.width * .018),
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .02),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                  ],
                ),
              ),

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
                  ).marginSymmetric(vertical: Get.height * .02),
                ],
              ),
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
