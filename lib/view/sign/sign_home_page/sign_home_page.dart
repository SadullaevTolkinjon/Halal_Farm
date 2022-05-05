import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';

class SignHomePage extends StatelessWidget {
  const SignHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstantsOfColors.yashilRang,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: getWidth(318)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: getHeight(17),
                      color: ConstantsOfColors.whiteColor),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(36),
            ),
            SizedBox(
              height: getHeight(60),
              width: getWidth(200),
              child: Image.asset("assets/images/halal3.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(92)),
              child: SizedBox(
                height: getHeight(92),
                width: getWidth(343),
                child: Text(
                  "Chorva hayvonlarini onlayn boqish",
                  style: TextStyle(
                      fontSize: getHeight(36),
                      fontWeight: FontWeight.w700,
                      color: ConstantsOfColors.whiteColor),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(30), left: getWidth(16)),
              child: SizedBox(
                height: getHeight(72),
                width: getWidth(343),
                child: Text(
                  'Xuddi "My Tom Cat" dagidek. Faqat haqiqiy hayvonlarni. Maqsad:musulmon aholini o\'zi ishonadigan halol go\'sht bilan taminlash',
                  style: TextStyle(
                      fontSize: getHeight(16),
                      fontWeight: FontWeight.w400,
                      color: ConstantsOfColors.whiteColor),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(205),
            ),
            KeyingiElevatedButton2(
              ontap: () {
                Navigator.pushNamed(context, "/signup");
              },
              text: "Ro'yxatdan o'tish",
            ),
            KeyingiElevatedButton(
              ontap: () {},
              text: "Akkountga kirish",
            )
          ],
        ),
      ),
    );
  }
}
