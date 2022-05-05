import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:pinput/pinput.dart';

class SmsVerifyPage extends StatefulWidget {
  const SmsVerifyPage({Key? key}) : super(key: key);

  @override
  State<SmsVerifyPage> createState() => _SmsVerifyPageState();
}

class _SmsVerifyPageState extends State<SmsVerifyPage> {
  final pinputController = TextEditingController();

  @override
  void dispose() {
    pinputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantsOfColors.transparentColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/images/x2.svg"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(60),
                  top: getHeight(20),
                ),
                child: Text(
                  "SMS dagi kodni kiriting",
                  style: TextStyle(
                    fontSize: getHeight(24),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(85), top: getHeight(10)),
                child: Text(
                  "Kod ushbu raqamga jo'natildi:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getHeight(15),
                      color: ConstantsOfColors.greyColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(130), top: getHeight(8)),
                child: Container(
                  child: Text(
                    "+998900119597",
                    style: TextStyle(color: ConstantsOfColors.greyColor),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(80), top: getHeight(80)),
                child: Pinput(
                  controller: pinputController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(85), top: getHeight(55)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Kodni qaytadan yuborish",
                    style: TextStyle(fontSize: getHeight(17)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getWidth(16), top: getHeight(270)),
                child: KeyingiElevatedButton(
                  text: "Keyingisi",
                  ontap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
