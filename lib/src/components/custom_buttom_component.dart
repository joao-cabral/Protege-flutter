import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/views/options_menu/anp_view.dart';
import 'package:protege/src/views/options_menu/corpo_de_bombeiro_view.dart';
import 'package:protege/src/views/options_menu/crc_view.dart';
import 'package:protege/src/views/options_menu/habite_se_view.dart';
import 'package:protege/src/views/options_menu/licenca_ambiental_view.dart';
import 'package:protege/src/views/options_menu/mtenrs_view.dart';
import 'package:protege/src/views/options_menu/nosso_contato_view.dart';
import 'package:protege/src/views/options_menu/nosso_site_view.dart';
import 'package:protege/src/views/options_menu/outorga_view.dart';
import 'package:protege/src/views/options_menu/teste_de_estanqueidade_view.dart';
// import 'package:protege/src/routes.dart';

class CustomButtomComponent extends StatefulWidget {
  final String imageAsset;
  final String routeName;

  CustomButtomComponent(
      {Key? key, required this.imageAsset, required this.routeName})
      : super(key: key);

  @override
  _CustomButtomComponentState createState() => _CustomButtomComponentState();
}

class _CustomButtomComponentState extends State<CustomButtomComponent> {
  // AppBarComponent appBarComponent = AppBarComponent();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      // width: 40,
      child: InkWell(
        onTap: () {
          switch (widget.routeName) {
            case 'ANP_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      AnpView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'CORPO_DE_BOMBEIRO_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      CorpoDeBombeiroView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'CRC_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      CrcView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'HABITA_SE_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      HabiteSeView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'LICENCA_AMBIENTAL_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      LicencaAmbientalView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'MTENRS_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      MtenrView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'NOSSO_CONTATO_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      NossoContatoView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'NOSSO_SITE_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      NossoSiteView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'OUTORGA_VIEW':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      OutorgaView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            case 'TESTE_DE_ESTANQUEIDADE':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      TesteDeEstanqueidadeView(), // O problema de rota eh aqui, tenho que bolar alguma coisa que funcione em relacao a navegacao usando essa sintaxe push do navigator
                ),
              );
              break;
            default:
          }
        },
        borderRadius: BorderRadius.circular(15),
        splashColor: Colors.brown.withOpacity(0.5),
        child: Ink(
          // height: 30,
          // width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(widget.imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );

    // return ElevatedButton(
    //   onPressed: () => {},
    //   child: Container(
    //     // height: 100,
    //     child: Container(
    //       decoration: BoxDecoration(
    //           image: DecorationImage(
    //         image: AssetImage(imageAsset),
    //         fit: BoxFit.fill,
    //       )),
    //     ),
    //   ),
    //   style: ElevatedButton.styleFrom(
    //       primary: Color(0xFFb4c8c6),
    //       shape:
    //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
    //       textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
    // );
  }
}
