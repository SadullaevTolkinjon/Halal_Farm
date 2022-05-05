import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_textformfield.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController fullNameController = TextEditingController();
  TextEditingController birthDataController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstantsOfColors.backColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: getHeight(15), left: getWidth(5)),
              child: RegistrAppBar(text: "Ro'yxatdan o'tish",),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textFormWidget(
                controller: fullNameController,
                hint: "To'liq ism-familyangiz",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textFormWidget(
                controller: birthDataController,
                hint: "Tug'ilgan sanangiz",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textFormWidget(
                controller: phoneNumberController,
                hint: "Telefon raqamingiz",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(85), left: getWidth(2)),
              child: Row(
                children: [
                  chiziqcha(),
                  Text(
                    "Ijtimoiy tarmoqlar orqali",
                    style: TextStyle(fontSize: getHeight(17)),
                  ),
                  chiziqcha(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getWidth(16), right: getWidth(16), top: getHeight(50)),
              child: SocialButton(
                text: "Google",
                image: "assets/images/google2.png",
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton2(
                    text: "Apple",
                    image: "assets/images/apple.png",
                    ontap: () {},
                  ),
                  SocialButton2(
                    text: "Facebook",
                    image: "assets/images/facebook.png",
                    ontap: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(60)),
              child: KeyingiElevatedButton(
                text: "Keyingisi",
                ontap: () {
                  Navigator.pushNamed(context, "/sms");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
