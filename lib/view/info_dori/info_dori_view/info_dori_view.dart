import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';

class InfoDoriPage extends StatelessWidget {
  const InfoDoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold
    (backgroundColor: ConstantsOfColors.backColor,
      body: SafeArea(child: Column(children: [AppbarInfoPAge2(text: "",)],)),
    )
    ;
  }
}
