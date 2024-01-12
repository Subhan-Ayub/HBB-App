import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  final width;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final label;
  final keyboard;
  final ImageProvider<Object>? prefixIconImage;

  const CustomTextField(
      {super.key,
      this.width,
      this.label,
      this.keyboard,
      required this.controller,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.prefixIconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ]),
        child: TextFormField(
          textAlign: TextAlign.center,
          controller: controller,
          inputFormatters: keyboard,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(vertical: Get.height * 0.015),
            fillColor: Colors.white,
            filled: true,
            hintStyle:
                const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
        ));
  }
}

class FillButton extends StatelessWidget {
  final color;
  final width;
  final child;
  final ontap;

  FillButton(
      {super.key, required this.color, this.ontap, this.width, this.child});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(3, 3),
              ),
            ]),
        child: child,
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final color;
  final width;
  final child;
  final border;
  final ontap;

  const OutlineButton(
      {super.key,
      required this.color,
      required this.border,
      this.ontap,
      this.width,
      this.child});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: Get.height * 0.06,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: border,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(3, 3),
              ),
            ]),
        child: child,
      ),
    );
  }
}

class HeightFillButton extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final Widget child;

  HeightFillButton(
      {super.key,
      required this.color,
      required this.width,
      required this.height,
      required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ]),
      child: child,
    );
  }
}

class BottomNavContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  const BottomNavContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: height,
        height: width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 243, 239, 239),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(4, 4),
              ),
            ]),
        child: child);
  }
}

class CustomPhoneField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final width;
  final ontap;
  final initialValue;
  const CustomPhoneField({
    super.key,
    this.width,
    required this.initialValue,
    required this.controller,
    required this.hintText,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(18, 18, 18, 18).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ]),
      child: InternationalPhoneNumberInput(
        onInputChanged: ontap,
        inputDecoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
            hintText: hintText,
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
        selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            showFlags: true,
            setSelectorButtonAsPrefixIcon: true,
            leadingPadding: Checkbox.width),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: const TextStyle(color: Colors.black),
        initialValue: initialValue,
        textFieldController: controller,
        formatInput: false,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder: const OutlineInputBorder(),
        onInputValidated: (bool value) {
          // Handle validation
        },
      ),
    );
  }
}
