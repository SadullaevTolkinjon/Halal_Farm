import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';

class NoPetsPage extends StatelessWidget {
  const NoPetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getWidth(70)),
              child: SizedBox(
                height: getWidth(40),
                child: Text(
                  "Mening Hayvonlarim",
                  style: TextStyle(
                      fontSize: getHeight(24),
                      fontWeight: FontWeight.w700,
                      color: ConstantsOfColors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 120),
              child: Image.asset("assets/images/nopet.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(70), top: getHeight(40)),
              child: Text(
                "Hali Hayvonlaringiz yo'q",
                style: TextStyle(
                    fontSize: getHeight(22), fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(51), top: getHeight(10)),
              child: SizedBox(
                height: getHeight(44),
                width: getWidth(272),
                child: Text(
                  "O'zingiz xoxlagan hayvonni sotib olishingiz mumkin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getHeight(16),
                      color: ConstantsOfColors.greyColor),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(40)),
              child: KeyingiElevatedButton(
                text: "Hayvon sotib olish",
                ontap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
