
import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';

class textFormWidget extends StatelessWidget {
  var controller;
  var hint;
  var label;
  textFormWidget({Key? key, required this.controller, this.hint,this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: ConstantsOfColors.black,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: ConstantsOfColors.black),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
         
          borderSide: BorderSide(
            color: ConstantsOfColors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(getHeight(15))),
          borderSide: BorderSide(
            color: ConstantsOfColors.black,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ConstantsOfColors.redColor),

        ),
      ),
    );
  }
}
