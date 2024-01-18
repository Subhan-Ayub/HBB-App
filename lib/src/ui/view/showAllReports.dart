import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arg = Get.arguments;
    print(arg);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Text('Daily Exposure & National/International Exposure Report for January, ${arg['year']}',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900))
              .marginSymmetric(horizontal: 10),
          Divider(),
          Text(
            'Note E = Daily Exposure K = National/International Exposure',
            style: TextStyle(color: Colors.red, fontSize: 12),
          ).marginSymmetric(horizontal: 10),
          Container(
            height: 25,
            width: Get.width,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: const Color.fromARGB(255, 212, 212, 212),
                      width: 1.0),
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 212, 212, 212),
                      width: 1.0),
                ),
                color: const Color.fromARGB(255, 237, 237, 237)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Data',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ).marginOnly(left: 10),
                  Text(
                    'E/K',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ).marginOnly(left: 30),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ).marginOnly(right: 20),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ).marginOnly(right: Get.width * .2),
                ]),
          ).marginOnly(top: 9),
          Container(
            height: Get.height - 240,
            width: Get.width,
            color: Colors.amber,
            child: ListView.builder(
                itemCount: 31,
                itemBuilder: (BuildContext context, i) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: i % 2 == 0
                        ? Colors.white
                        : Color.fromARGB(255, 241, 241, 241),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${i+1}/${arg['month']}/2024'),
                        Text('E'),
                        Text('sub'),
                        Text('test@gmail.com').marginOnly(right: 20),
                      ],
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
