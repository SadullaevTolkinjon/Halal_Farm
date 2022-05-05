import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/colors_constants.dart';
import 'package:halal_farm/core/data/local_data/local_data.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_of_buttons.dart';
import 'package:halal_farm/view/onboarding_page/onboarding_bloc/onboarding_bloc.dart';
import 'package:halal_farm/view/onboarding_page/onboarding_state/onboarding_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
        return myScaffold(context);
      }),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: getHeight(400),
              child: PageView.builder(
                controller: controller,
                onPageChanged: (indexx) {
                  context.read<OnboardingCubit>().changeIndexOfOn(indexx);
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: getHeight(400),
                    width: getWidth(375),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(onboardData[index]["rasm"]),
                          fit: BoxFit.fill),
                    ),
                  );
                },
                itemCount: onboardData.length,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getWidth(16), top: getHeight(52)),
              child: SizedBox(
                height: getHeight(68),
                width: getWidth(343),
                child: Text(
                  onboardData[context.watch<OnboardingCubit>().onboradingIndex]
                      ["text"],
                  style: TextStyle(
                      fontSize: getHeight(26), fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(32),
            ),
            SmoothPageIndicator(
              controller: controller, // PageController
              count: onboardData.length,
              effect:  WormEffect(
                activeDotColor: ConstantsOfColors.yashilRang
              ), // your preferred effect
              onDotClicked: (index) {
                context.read<OnboardingCubit>().changeIndexOfOn(index);
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(93)),
              child: KeyingiElevatedButton(
                ontap: context.watch<OnboardingCubit>().onboradingIndex < 2
                    ? null
                    : () {
                        Navigator.pushNamed(context, "/sign");
                      },
                text: "Keyingisi",
              ),
            )
          ],
        ),
      ),
    );
  }
}
