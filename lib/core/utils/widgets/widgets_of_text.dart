
import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';

class TextContainer extends StatelessWidget {
  var text;
  TextContainer({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(36),
      width: getWidth(343),
      child: Text(
        text,
        style: TextStyle(
            fontSize: getHeight(13),
            fontWeight: FontWeight.w400,
            color: ConstantsOfColors.greyColor),
      ),
    );
  }
}