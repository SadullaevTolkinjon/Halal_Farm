import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';

class SelectLanguageContainer extends StatelessWidget {
  var text;
  var image;
  var borderradius;
  SelectLanguageContainer({Key? key, this.text, this.image, this.borderradius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(80),
      width: getWidth(343),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: getWidth(16)),
            child: CircleAvatar(
              radius: getHeight(20),
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(20)),
            child: Text(
              text,
              style: TextStyle(
                fontSize: getHeight(18),
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: ConstantsOfColors.selectLangContCol,
          borderRadius: borderradius),
    );
  }
}

class RegistrAppBar extends StatelessWidget {
  var text;
  RegistrAppBar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(74),
      width: getWidth(375),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: ConstantsOfColors.blueColor,
                ),
                Text(
                  "Ortga",
                  style: TextStyle(
                      color: ConstantsOfColors.blueColor,
                      fontSize: getHeight(17)),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(18), fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarTarix extends StatelessWidget {
  var text;
  var ontap;
  AppbarTarix({Key? key, required this.text, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(74),
      width: getWidth(375),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: ConstantsOfColors.blueColor,
                ),
                Text(
                  "Ortga",
                  style: TextStyle(
                      color: ConstantsOfColors.blueColor,
                      fontSize: getHeight(17)),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: getHeight(18), fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: getWidth(50)),
              child: IconButton(
                icon: SvgPicture.asset("assets/images/filter.svg"),
                onPressed: ontap,
              ))
        ],
      ),
    );
  }
}

class AppbarInfoPAge extends StatelessWidget {
  var ontap;
  AppbarInfoPAge({Key? key, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(74),
      width: getWidth(375),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: ConstantsOfColors.whiteColor,
                ),
                Text(
                  "Ortga",
                  style: TextStyle(
                      color: ConstantsOfColors.whiteColor,
                      fontSize: getHeight(17)),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text(
              "Denov oti (N:546)",
              style: TextStyle(
                  color: ConstantsOfColors.whiteColor,
                  fontSize: getHeight(18),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(50)),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/images/liveVideoicon.svg",
              ),
              onPressed: ontap,
            ),
          )
        ],
      ),
    );
  }
}

class AppbarInfoPAge2 extends StatelessWidget {
  var text;
  var ontap;
  AppbarInfoPAge2({Key? key, this.ontap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(74),
      width: getWidth(375),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: ConstantsOfColors.whiteColor,
                ),
                Text(
                  "Ortga",
                  style: TextStyle(
                      color: ConstantsOfColors.whiteColor,
                      fontSize: getHeight(17)),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text(
              text,
              style: TextStyle(
                  color: ConstantsOfColors.whiteColor,
                  fontSize: getHeight(18),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class YemishLarContainer extends StatelessWidget {
  const YemishLarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(150),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                backgroundImage: const CachedNetworkImageProvider(
                  "https://apollo-olx.cdnvideo.ru/v1/files/vvw99wqabzg93-UZ/image;s=644x461",
                ),
                radius: getHeight(40),
              ),
              title: Text(
                "Beda (58%)",
                style: TextStyle(
                    fontSize: getHeight(16), fontWeight: FontWeight.w500),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getHeight(15),
                    width: getWidth(247),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(getHeight(8))),
                      border: Border.all(color: ConstantsOfColors.ochGrey),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: getHeight(15),
                          width: getWidth(160),
                          decoration: BoxDecoration(
                              color: ConstantsOfColors.yashilRang,
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(getHeight(8)))),
                        ),
                      ],
                    ),
                  ),
                  const Text("Ertaga tugaydi")
                ],
              ));
        },
        itemCount: 2,
      ),
    );
  }
}
