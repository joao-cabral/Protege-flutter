import 'package:flutter/material.dart';
// import 'package:protege/src/routes.dart';
import 'package:protege/src/views/SplashScreenView.dart';
import 'package:protege/src/views/home/home_view.dart';
import 'package:protege/src/views/login/forgot_password_view.dart';
import 'package:protege/src/views/login/login_view.dart';
import 'package:protege/src/views/login/register_view.dart';
import 'package:protege/src/views/login/visit_view.dart';
import 'package:protege/src/views/options_menu/corpo_de_bombeiro_view.dart';
import 'package:protege/src/views/options_menu/corpo_de_bombeiros/avcb_view.dart';
import 'package:protege/src/views/options_menu/crc_view.dart';
import 'package:protege/src/views/options_menu/habite_se_view.dart';
import 'package:protege/src/views/options_menu/licenca_ambiental_view.dart';
import 'package:protege/src/views/options_menu/mtenrs_view.dart';
import 'package:protege/src/views/options_menu/nosso_contato_view.dart';
import 'package:protege/src/views/options_menu/nosso_site_view.dart';
import 'package:protege/src/views/options_menu/outorga_view.dart';
import 'package:protege/src/views/options_menu/teste_de_estanqueidade_view.dart';
import 'src/views/options_menu/anp_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// AppBarComponent
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protege',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => SplashScreenView(),
        'LOGIN_VIEW': (_) => LoginView(),
        'FORGOT_PASSWORD_VIEW': (_) => ForgotPasswordView(),
        'REGISTER_VIEW': (_) => RegisterView(),
        'VISIT_VIEW': (_) => VisitView(),
        'HOME_VIEW': (_) => HomeView(),
        'ANP_VIEW': (_) => AnpView(),
        'CORPO_DE_BOMBEIRO_VIEW': (_) => CorpoDeBombeiroView(),
        'CRC_VIEW': (_) => CrcView(),
        'HABITA_SE_VIEW': (_) => HabiteSeView(),
        'LICENCA_AMBIENTAL_VIEW': (_) => LicencaAmbientalView(),
        'MTENRS_VIEW': (_) => MtenrView(),
        'NOSSO_CONTATO_VIEW': (_) => NossoContatoView(),
        'NOSSO_SITE_VIEW': (_) => NossoSiteView(),
        'OUTORGA_VIEW': (_) => OutorgaView(),
        'TESTE_DE_ESTANQUEIDADE': (_) => TesteDeEstanqueidadeView(),
      },
    );
  }
}
