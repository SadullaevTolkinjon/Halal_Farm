import 'package:flutter/material.dart';
import 'package:halal_farm/view/dorilar_tarixi/dorilar_tarixi_view/dorilar_tarixi_view.dart';
import 'package:halal_farm/view/home_page/home_page_view/home_page_view.dart';
import 'package:halal_farm/view/info_page/info_page_view/info_page_view.dart';
import 'package:halal_farm/view/initial_page/initial.dart';
import 'package:halal_farm/view/no_pets_page/no_pets_view/no_pets_view.dart';
import 'package:halal_farm/view/onboarding_page/onboarding_view/onboarding_vieww.dart';
import 'package:halal_farm/view/select_langugae/language_view/language_view.dart';
import 'package:halal_farm/view/sign/sign_home_page/sign_home_page.dart';
import 'package:halal_farm/view/sign/sign_in_page/sign_in_view/sign_in_view.dart';
import 'package:halal_farm/view/sign/sign_up_page/sign_up_view/sign_up_view.dart';
import 'package:halal_farm/view/sign/sms_verification/sms_verification_view/sms_verification_view.dart';
import 'package:halal_farm/view/sotuv_tasdigi/sotuv_tasdigi_view/sotuv_tasdigi_view.dart';
import 'package:halal_farm/view/sotuvga_qoyish_page/sotuvga_qoyish_view/sotuvga_qoyish_view.dart';
import 'package:halal_farm/view/yemishlar_tarixi/yemishlar_tarixi_view/yemishlar_tarixi_view.dart';

class GenerateRouterr {
  static routeGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const InitialPage());
      case "/lang":
        return MaterialPageRoute(builder: (_) => const SelecetLanguagePage());
      case "/onboard":
        return MaterialPageRoute(builder: (_) => OnboardingPage());
      case "/sign":
        return MaterialPageRoute(builder: (_) => const SignHomePage());
      case "/signup":
        return MaterialPageRoute(builder: (_) => SignUp());
      case "/sms":
        return MaterialPageRoute(builder: (_) => const SmsVerifyPage());
      case "/signin":
        return MaterialPageRoute(builder: (_) => SignIn());
      case "/nopets":
        return MaterialPageRoute(builder: (_) => const NoPetsPage());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/info":
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case "/sotuv":
        return MaterialPageRoute(builder: (_) => SotuvgaQoyishPage());
      case "/tasdiq":
        return MaterialPageRoute(builder: (_) => const SotuvTasdigiPage());
         case "/yemishtarixi":
        return MaterialPageRoute(builder: (_) => const YemishlarTarixiPage());
         case "/doritarixi":
        return MaterialPageRoute(builder: (_) => const DorilarTarixiPage());
    }
  }
}
