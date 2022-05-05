import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_text.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_textformfield.dart';

class SotuvgaQoyishPage extends StatelessWidget {
  SotuvgaQoyishPage({Key? key}) : super(key: key);
  final hayvonName = TextEditingController();
  final yoshController = TextEditingController();
  final firmaNameController = TextEditingController();
  final narxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getHeight(370),
              width: getWidth(375),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://www.cavalluna.com/fileadmin/og-images/Pferderassen/og-image-american-quarter-horse-1200x630.png"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    child: AppbarInfoPAge2(
                      ontap: () {},
                      text: "Sotuvga qo'yish",
                    ),
                    top: getHeight(20),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getWidth(16), right: getWidth(16), top: getHeight(24)),
              child: textFormWidget(
                controller: hayvonName,
                hint: "Hayvon",
                label: "Hayvon",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getWidth(16), right: getWidth(16), top: getHeight(20)),
              child: textFormWidget(
                controller: yoshController,
                hint: "Yosh",
                label: "Yosh",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getWidth(16), right: getWidth(16), top: getHeight(20)),
              child: textFormWidget(
                controller: firmaNameController,
                hint: "Firmasi",
                label: "Firmasi",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getWidth(16), right: getWidth(16), top: getHeight(30)),
              child: textFormWidget(
                controller: narxController,
                hint: "Narx(so'mda)",
                label: "Narx",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(24)),
              child: KeyingisiButtonYashil(
                text: "Sotuvga qo'yish",
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(15)),
              child: TextContainer(
                text:
                    "Sotuvga qoyilishdan oldin firmadagilar tasdig'idan o'tadi",
              ),
            )
          ],
        ),
      ),
    );
  }
}
