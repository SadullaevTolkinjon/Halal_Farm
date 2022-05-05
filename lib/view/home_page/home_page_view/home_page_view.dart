import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/constants/constants_of_assets.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstantsOfColors.ochGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            BalanceAppBar(),
            SliverToBoxAdapter(
              child: Container(
                height: getHeight(80),
                color: ConstantsOfColors.yashilRang,
                child: Container(
                    height: getHeight(80),
                    decoration: BoxDecoration(
                      color: ConstantsOfColors.ochGrey,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(getHeight(15)),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: getWidth(15)),
                          child: Text("Mening Hayvonlarim(2)",
                              style: TextStyle(
                                  fontSize: getHeight(24),
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    )),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(left: getWidth(8), right: getWidth(8)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: ConstantsOfColors.whiteColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(getHeight(15)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: getHeight(24), left: getWidth(20)),
                          child: SizedBox(
                            height: getHeight(30),
                            width: getWidth(205),
                            child: Center(
                              child: Text(
                                "2. Hisori Qo'y(N:365)",
                                style: TextStyle(
                                    fontSize: getHeight(20),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(getWidth(20)),
                          child: Container(
                            height: getHeight(194),
                            width: getWidth(319),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(getHeight(8))),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/qoy.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
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
                                  "Qo'ylar orasida oq mushak kasalligi tarqayabdi.",
                                  style: TextStyle(
                                      fontSize: getHeight(17),
                                      fontWeight: FontWeight.w500,
                                      color: ConstantsOfColors.redColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getWidth(20), top: getHeight(16)),
                          child: InkWell(
                            child: DoriButtonCon(text: "Dori sotib olish"),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(getHeight(24)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Yetilish ko'rsatkichi",
                                    style: TextStyle(
                                        fontSize: getHeight(18),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: getHeight(44),
                                    width: getWidth(156),
                                    child: Text(
                                      "Taxminiy yetilish sanasi: 22-april,2022-yil",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ConstantsOfColors.greyColor),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: getWidth(45)),
                                child: Text(
                                  "52%",
                                  style: TextStyle(
                                      fontSize: getHeight(18),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: getHeight(100),
                                width: getWidth(74),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      getHeight(10),
                                    ),
                                  ),
                                  border: Border.all(
                                      color: ConstantsOfColors.ochGrey),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: getHeight(54),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(getHeight(10)),
                                          ),
                                          color: ConstantsOfColors.yashilRang),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getWidth(20), top: getHeight(27)),
                          child: Text(
                            "Yemishlari(2)",
                            style: TextStyle(
                                fontSize: getHeight(18),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const YemishLarContainer(),
                      ],
                    ),
                  ),
                );
              }, childCount: 5),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: getHeight(750),
                mainAxisSpacing: getHeight(10),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                  left: getWidth(10), right: getWidth(10), top: getHeight(20)),
              sliver: SliverToBoxAdapter(
                child: InkWell(
                  child: YangiHayContBut(
                    text: "Yangi hayvon sotib olish",
                  ),
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(ConstantsOfAsset.homeIcon), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(ConstantsOfAsset.notifIcon), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(ConstantsOfAsset.searchIcon), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(ConstantsOfAsset.userIcon), label: ""),
        ],
        onTap: (index) {},
      ),
    );
  }

  SliverToBoxAdapter BalanceAppBar() {
    return SliverToBoxAdapter(
      child: Container(
        height: getHeight(250),
        color: ConstantsOfColors.yashilRang,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: getHeight(20)),
              child: SizedBox(
                height: getHeight(30),
                width: 100,
                child: Image.asset("assets/images/halal3.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(32)),
              child: Text(
                "Balansizngiz",
                style: TextStyle(
                    fontSize: getHeight(14),
                    fontWeight: FontWeight.w400,
                    color: ConstantsOfColors.yashilText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: ConstantsOfColors.whiteColor,
                    size: getHeight(28),
                  ),
                ),
                Text(
                  "450000",
                  style: TextStyle(
                      color: ConstantsOfColors.whiteColor,
                      fontSize: getHeight(24),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  " so'm",
                  style: TextStyle(color: ConstantsOfColors.whiteColor),
                ),
              ],
            ),
            SizedBox(
              height: getHeight(10),
            ),
            Text(
              "Hisobni to'ldirish uchun ID:222 111 333",
              style: TextStyle(
                  color: ConstantsOfColors.yashilText,
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
