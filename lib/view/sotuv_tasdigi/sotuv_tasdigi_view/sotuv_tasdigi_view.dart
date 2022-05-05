import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';

class SotuvTasdigiPage extends StatelessWidget {
  const SotuvTasdigiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantsOfColors.backColor,
        centerTitle: true,
        title: Text(
          "Sotuvga qo'yish",
          style: TextStyle(color: ConstantsOfColors.black),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: getWidth(16), top: getHeight(68)),
          child: SizedBox(
            height: getHeight(60),
            width: getWidth(343),
            child: Center(
              child: Text(
                "Sotish haqidagi arizangiz muvaffaqiyatli yuborildi",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: getHeight(20), fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: getWidth(16), top: getHeight(20)),
          child: SizedBox(
            height: getHeight(60),
            width: getWidth(343),
            child: Center(
              child: Text(
                "Adminstratorlarimiz tez fursatlarda arizangizni ko'rib chiqishadi va ular tasdiqlashlari bilan e'loningiz dasturda paydo bo'ladi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: getHeight(14),
                    fontWeight: FontWeight.w400,
                    color: ConstantsOfColors.greyColor),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: getHeight(55)),
          child: Container(
            height: getHeight(212),
            width: getWidth(203),
            decoration: BoxDecoration(
                border: Border.all(
                  color: ConstantsOfColors.ochGrey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(getHeight(10)))),
            child: Column(
              children: [
                Container(
                  height: getHeight(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(getHeight(10)),
                    ),
                    image: const DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://www.cavalluna.com/fileadmin/og-images/Pferderassen/og-image-american-quarter-horse-1200x630.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getWidth(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: getHeight(20),
                        child: Row(
                          children: [
                            Text(
                              "Qorabayr toy - 3 oylik",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: getHeight(12),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(35),
                        child: Row(
                          children: [
                            Text(
                              "3 250 000 so'm",
                              style: TextStyle(
                                  fontSize: getHeight(16),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getWidth(16), right: getWidth(16), top: getHeight(100)),
          child: KeyingisiButton3(
            text: "Elonni ko'rish",
            ontap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: getHeight(20)),
          child: KeyingisiButtonYashil(
            ontap: () {},
            text: "Uy sahifaga",
            assetImage: "assets/images/home2.svg",
          ),
        )
      ]),
    );
  }
}
