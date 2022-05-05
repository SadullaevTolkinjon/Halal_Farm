import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_textformfield.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              RegistrAppBar(text: "Akkountga kirish"),
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(16),
                    right: getWidth(16),
                    top: getHeight(35)),
                child: textFormWidget(
                  hint: "Telefon raqamingiz",
                  controller: phoneController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(60), left: getWidth(2)),
                child: Row(
                  children: [
                    chiziqcha(),
                    Text(
                      "Ijtimoiy tarmoqlar orqali",
                      style: TextStyle(
                          fontSize: getHeight(17),
                          color: ConstantsOfColors.greyColor),
                    ),
                    chiziqcha(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(16),
                    right: getWidth(16),
                    top: getHeight(50)),
                child: SocialButton(
                  image: "assets/images/google2.png",
                  text: "Google",
                  ontap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButton2(
                      image: "assets/images/apple.png",
                      text: "Apple",
                      ontap: () {},
                    ),
                    SocialButton2(
                      image: "assets/images/facebook.png",
                      text: "Facebook",
                      ontap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(16),
                    right: getWidth(16),
                    top: getHeight(250)),
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
      ),
    );
  }
}
