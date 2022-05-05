import 'package:flutter/material.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';

class SelecetLanguagePage extends StatelessWidget {
  const SelecetLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getWidth(138), top: getHeight(88)),
              child: SizedBox(
                height: getHeight(30),
                width: getWidth(100),
                child: Image.asset("assets/images/halal2.png"),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: getWidth(113.5), top: getHeight(90)),
              child: SizedBox(
                height: getHeight(32),
                width: getWidth(148),
                child: Text(
                  "Tilni tanlang",
                  style: TextStyle(
                    fontSize: getHeight(26),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(38), top: getHeight(8)),
              child: SizedBox(
                height: getHeight(19),
                width: getWidth(300),
                child: Text(
                  "Dasturni qaysi tilda ishlatishni istaysiz?",
                  style: TextStyle(fontSize: getHeight(16)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(58), left: getWidth(16)),
              child: SelectLanguageContainer(
                text: "O'zbek Tili",
                image: "assets/images/uzb.png",
                borderradius: BorderRadius.vertical(
                  top: Radius.circular(
                    getHeight(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16)),
              child: SelectLanguageContainer(
                text: "English",
                image: "assets/images/en.png",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16)),
              child: SelectLanguageContainer(
                text: "Русский язык",
                image: "assets/images/rus.png",
                borderradius: BorderRadius.vertical(
                    bottom: Radius.circular(getHeight(10))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(144), left: getWidth(16)),
              child: KeyingiElevatedButton(
                ontap: () {},
                text: "Keyingisi",
              ),
            )
          ],
        ),
      ),
    );
  }
}
