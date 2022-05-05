import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_text.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: getHeight(350),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: getHeight(350),
                width: getWidth(375),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://www.cavalluna.com/fileadmin/og-images/Pferderassen/og-image-american-quarter-horse-1200x630.png"),
                        fit: BoxFit.cover)),
                child: Stack(children: [
                  Positioned(
                    child: AppbarInfoPAge(
                      ontap: () {},
                    ),
                    top: getHeight(20),
                  )
                ]),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: getHeight(15),
            ),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: getWidth(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: ConstantsOfColors.redColor,
                      size: getHeight(40),
                    ),
                    SizedBox(
                      height: getHeight(46),
                      width: getWidth(287),
                      child: Text(
                        "Otlar orasida oq mushak kasalligi tarqayabdi.",
                        style: TextStyle(
                            fontSize: getHeight(17),
                            fontWeight: FontWeight.w500,
                            color: ConstantsOfColors.redColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(getHeight(16)),
            sliver: SliverToBoxAdapter(
              child: InkWell(
                child: DoriButtonCon(text: "Dori sotib olish"),
                onTap: () {},
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: getWidth(16)),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Container(
                    height: getHeight(47),
                    width: getWidth(101),
                    decoration: BoxDecoration(
                        color: ConstantsOfColors.ochiqGrey,
                        borderRadius:
                            BorderRadius.all(Radius.circular(getHeight(15)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/oylik.svg"),
                        Text(
                          "8 oylik",
                          style: TextStyle(
                              fontSize: getHeight(16),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(16)),
                    child: Container(
                      height: getHeight(47),
                      width: getWidth(170),
                      decoration: BoxDecoration(
                          color: ConstantsOfColors.ochiqGrey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(getHeight(15)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/cash.svg"),
                          Text(
                            "3250000 so'm",
                            style: TextStyle(
                                fontSize: getHeight(16),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: getWidth(20), right: getWidth(100), top: getHeight(15)),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: getHeight(47),
                width: getWidth(211),
                decoration: BoxDecoration(
                    color: ConstantsOfColors.ochiqGrey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(getHeight(15)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/images/location.svg"),
                    Text(
                      "New Uzbekistan farm",
                      style: TextStyle(
                          fontSize: getHeight(16), fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              left: getWidth(20),
              top: getHeight(15),
              right: getWidth(100),
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: getHeight(47),
                width: getWidth(225),
                decoration: BoxDecoration(
                    color: ConstantsOfColors.ochiqGrey,
                    borderRadius:
                        BorderRadius.all(Radius.circular(getHeight(15)))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/images/calendar.svg"),
                    Text(
                      "Xarid sanasi:28.11.2021",
                      style: TextStyle(
                          fontSize: getHeight(16), fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: getWidth(20), top: getHeight(45)),
            sliver: Textmy(
              text: "Yetilish ko'rsatgichi",
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: getHeight(20)),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    "52%",
                    style: TextStyle(
                        fontSize: getHeight(20), fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: getHeight(200),
                    width: getWidth(110),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          getHeight(15),
                        ),
                      ),
                      border: Border.all(color: ConstantsOfColors.ochGrey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: getHeight(104),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(getHeight(15)),
                              ),
                              color: ConstantsOfColors.yashilRang),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Taxminiy yetilish sanasi:22-noyabr,2022-yil.",
                    style: TextStyle(
                        fontSize: getHeight(14),
                        fontWeight: FontWeight.w500,
                        color: ConstantsOfColors.greyColor),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              left: getWidth(20),
              top: getHeight(32),
            ),
            sliver: Textmy(
              text: "Yemishlari (2)",
            ),
          ),
          const SliverToBoxAdapter(
            child: YemishLarContainer(),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: getWidth(16), right: getWidth(16), top: getHeight(45)),
            sliver: TarixContainer(text: "Yemishlar tarixi", xaridNum: 12),
          ),
          const SliverDivider(),
          SliverPadding(
            padding: EdgeInsets.only(
                left: getWidth(16), right: getWidth(16), top: getHeight(15)),
            sliver: TarixContainer(text: "Dorilar tarixi", xaridNum: 5),
          ),
          const SliverDivider(),
          SliverPadding(
            padding: EdgeInsets.only(
                top: getHeight(32), left: getWidth(16), right: getWidth(16)),
            sliver: SliverToBoxAdapter(
              child: KeyingisiButton3(
                text: "Uyimga yetkazib berish",
                ontap: () {},
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: getWidth(16), right: getWidth(16), top: getHeight(10)),
            sliver: SliverToBoxAdapter(
              child: TextContainer(
                text:
                    "Hayvoningizni tirik yoki so'yilgan holatda uyingizga eltib beramiz",
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(
                getHeight(16)),
            sliver: SliverToBoxAdapter(
              child: KeyingisiButton3(
                text: "Sotuvga qo'yish",
                ontap: () {},
              ),
            ),
          ),
           SliverPadding(
            padding: EdgeInsets.only(
                left: getWidth(16), right: getWidth(16), top: getHeight(10)),
            sliver: SliverToBoxAdapter(
              child: TextContainer(
                text:
                    "Hayvonlaringizni onlayn bozorda boshqalarga sotishingiz mumkin",
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SliverDivider extends StatelessWidget {
  const SliverDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: getWidth(16), top: getHeight(10)),
      sliver: SliverToBoxAdapter(
        child: Divider(thickness: getHeight(2)),
      ),
    );
  }
}

class TarixContainer extends StatelessWidget {
  var text;
  var xaridNum;

  TarixContainer({Key? key, this.text, this.xaridNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:
                TextStyle(fontSize: getHeight(18), fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                "$xaridNum ta xarid",
                style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w400,
                    color: ConstantsOfColors.greyColor),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ConstantsOfColors.greyColor,
              )
            ],
          )
        ],
      ),
    );
  }
}

class Textmy extends StatelessWidget {
  var text;
  Textmy({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        text,
        style: TextStyle(fontSize: getHeight(20), fontWeight: FontWeight.w600),
      ),
    );
  }
}
