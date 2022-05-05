import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';

class KeyingiElevatedButton extends StatelessWidget {
  var ontap;
  var text;
  KeyingiElevatedButton({Key? key, this.ontap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(fontSize: getHeight(17), fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: ConstantsOfColors.yashilRang,
          minimumSize: Size(getWidth(343), getHeight(56))),
    );
  }
}

class KeyingiElevatedButton2 extends StatelessWidget {
  var ontap;
  var text;
  KeyingiElevatedButton2({Key? key, this.ontap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(
            fontSize: getHeight(17),
            fontWeight: FontWeight.w600,
            color: ConstantsOfColors.black),
      ),
      style: ElevatedButton.styleFrom(
          primary: ConstantsOfColors.elButgreyCol,
          minimumSize: Size(getWidth(343), getHeight(56))),
    );
  }
}

class KeyingisiButton3 extends StatelessWidget {
  var ontap;
  var text;
  KeyingisiButton3({Key? key, required this.ontap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: getHeight(56),
        width: getWidth(343),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                getHeight(15),
              ),
            ),
            color: ConstantsOfColors.ochGrey),
        child: Center(
          child: Text(
            text,
            style:
                TextStyle(fontSize: getHeight(17), fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class KeyingisiButtonYashil extends StatelessWidget {
  var ontap;
  var text;
  var assetImage;
  KeyingisiButtonYashil(
      {Key? key, required this.ontap, required this.text, this.assetImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: getHeight(56),
        width: getWidth(343),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                getHeight(15),
              ),
            ),
            color: ConstantsOfColors.yashilRang),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            assetImage == null ? const Text("") : SvgPicture.asset(assetImage),
            Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(17),
                  fontWeight: FontWeight.w700,
                  color: ConstantsOfColors.whiteColor),
            ),
          ],
        )),
      ),
    );
  }
}

Container chiziqcha() => Container(
      height: getHeight(1),
      width: getHeight(100),
      color: Colors.grey,
    );

class SocialButton extends StatelessWidget {
  var ontap;
  var text;
  var image;
  SocialButton({Key? key, this.ontap, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: getHeight(20),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(25)),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(17),
                  fontWeight: FontWeight.w600,
                  color: ConstantsOfColors.black),
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: ConstantsOfColors.silverColor,
          shape: const StadiumBorder(),
          minimumSize: Size(getWidth(343), getHeight(56))),
    );
  }
}

class SocialButton2 extends StatelessWidget {
  var ontap;
  var text;
  var image;
  SocialButton2({Key? key, this.ontap, this.text, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: getHeight(20),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(25)),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(17),
                  fontWeight: FontWeight.w600,
                  color: ConstantsOfColors.black),
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: ConstantsOfColors.silverColor,
          shape: const StadiumBorder(),
          minimumSize: Size(getWidth(170), getHeight(56))),
    );
  }
}

class DoriButtonCon extends StatelessWidget {
  var text;
  DoriButtonCon({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(46),
      width: getWidth(319),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(getHeight(10)),
          ),
          border: Border.all(color: ConstantsOfColors.black)),
      child: Center(
        child: Text(text,
            style: TextStyle(
                color: ConstantsOfColors.black,
                fontSize: getHeight(17),
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class YangiHayContBut extends StatelessWidget {
  var text;
  YangiHayContBut({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ConstantsOfColors.whiteColor,
          border: Border.all(
            color: ConstantsOfColors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(getHeight(12)))),
      height: getHeight(56),
      width: getWidth(359),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add),
            Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(17), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
