import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: ConstantsOfColors.yashilRang,
        child: Center(
          child: Image.asset("assets/images/halal.png"),
        ),
      ),
    );
  }
}
