import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/addincomeexpenseController.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';
import 'package:intl/intl.dart';

class AddIncomeexpense extends StatelessWidget {
  AddIncomeexpense({super.key});
  final AddIncomeExpenseController _ = Get.find<AddIncomeExpenseController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Add Income Expense',
          style: UIDataTextStyles.HeadingStyle,
        ),
        // DateField
        SizedBox(
            width: Get.width / 1.09,
            child: TextFormField(
              onFieldSubmitted: (__) {
                // _.updateCheck.value ? _.Update2(i) : _.Update();
                // _.cs.fetchedItems();
              },
              style: TextStyle(color: Colors.black),
              controller: _.dateinput,
              decoration: const InputDecoration(
                  labelText: "Enter Date",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
              readOnly: true,
              onTap: () async {
                DateTime currentDate = DateTime.now();
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: currentDate);

                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);

                  _.dateinput.text = formattedDate;
                } else {
                  print("Date is not selected");
                }
              },
            )),
        // Amount TextField
        GoalsTextField(
          width: Get.width / 1.09,
          controller: _.amount,
          hintText: '',
          heading: 'Add Amount',
          readonly: false,
        ).marginOnly(left: Get.width * 0.02),
        // Select Type Income or Expense
        Container(
          width: Get.width / 1.09,
          height: Get.height * .045,
          child: DropdownButtonFormField(
              style: TextStyle(
                fontSize: Get.width * .025,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: "Select Income or Expense",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * .025,
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: Get.height * .01, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              iconEnabledColor: Colors.black,
              iconSize: Get.width * .04,
              value: _.selectedIncomeExpense,
              items: const [
                DropdownMenuItem<String>(
                  value: 'Income',
                  child: Text('Income'),
                ),
                DropdownMenuItem<String>(
                  value: 'Expense',
                  child: Text('Expense'),
                ),
              ],
              onChanged: (value) {
                _.selectedIncomeExpense = value;
                if (_.selectedIncomeExpense == 'Expense') {
                  _.isExpense.value = true;
                  print(_.selectedIncomeExpense);
                  print(_.isExpense.isTrue);
                } else {
                  _.isExpense.value = false;
                }
              }),
        ),

        // Select Reason

        Obx(
          () => _.isExpense.value
              ? Container(
                  width: Get.width / 1.09,
                  height: Get.height * .045,
                  child: DropdownButtonFormField(
                      style: TextStyle(
                        fontSize: Get.width * .025,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: "Select Reason",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: Get.width * .025,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: Get.height * .01, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 0.0,
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                      iconEnabledColor: Colors.black,
                      iconSize: Get.width * .04,
                      value: _.selectedReason,
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Advertising',
                          child: Text('Advertising'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Air Fare',
                          child: Text('Air Fare'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Bank Charges',
                          child: Text('Bank Charges'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Books, publications',
                          child: Text('Books, publications'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Bus and Taxi fares',
                          child: Text('Bus and Taxi fares'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Business Association',
                          child: Text('Business Association'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Business Opportunity Meeting',
                          child: Text('Business Opportunity Meeting'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Cell Phone',
                          child: Text('Cell Phone'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Computers',
                          child: Text('Computers'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Entertainment',
                          child: Text('Entertainment'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Biz Books Free',
                          child: Text('Home Biz Books Free'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Office',
                          child: Text('Home Office'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Office Maintainence',
                          child: Text('Home Office Maintainence'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Office Suppliers',
                          child: Text('Home Office Suppliers'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Office Utilities',
                          child: Text('Home Office Utilities'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Home Phone',
                          child: Text('Home Phone'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Insurance',
                          child: Text('Insurance'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Internet Access',
                          child: Text('Internet Access'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Laundary Services',
                          child: Text('Laundary Services'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Leagal Fees',
                          child: Text('Leagal Fees'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Lodging',
                          child: Text('Lodging'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Marketing Supplies',
                          child: Text('Marketing Supplies'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Meals',
                          child: Text('Meals'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Membership Fees',
                          child: Text('Membership Fees'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Mileage',
                          child: Text('Mileage'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Parking',
                          child: Text('Parking'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Postage',
                          child: Text('Postage'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Prizes, Awards',
                          child: Text('Prizes, Awards'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Tolls',
                          child: Text('Tolls'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Other',
                          child: Text('Other'),
                        ),
                      ],
                      onChanged: (value) {
                        _.selectedReason = value;
                      }),
                )
              : GoalsTextField(
                  width: Get.width / 1.09,
                  controller: _.incomeSource,
                  hintText: '',
                  heading: 'Income Source',
                  readonly: false,
                ).marginOnly(left: Get.width * 0.02),
        ),

// Buttons
        Row(
          children: [
            OutlineButton(
              ontap: () {
                Get.back();
              },
              border: Border.all(
                width: 2,
                color: Colors.red,
              ),
              width: Get.width * 0.2,
              color: Colors.red,
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red, fontSize: Get.width * 0.03),
              ),
            ),
            Spacer(),
            FillButton(
              ontap: () {
                _.save();
              },
              width: Get.width * 0.2,
              color: Colors.red,
              child: Text(
                'Save',
                style:
                    TextStyle(color: Colors.white, fontSize: Get.width * 0.03),
              ),
            )
          ],
        ).marginSymmetric(horizontal: Get.width * 0.04)
      ],
    ));
  }
}
