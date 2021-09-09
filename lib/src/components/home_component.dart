import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';

import 'custom_buttom_component.dart';

class HomeComponent extends StatefulWidget {
  // HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  final String assetAnp = 'assets/anp.png';
  final String assetCorpoBombeiro = 'assets/corpo_bombeiro.png';
  final String assetCrc = 'assets/crc.png';
  final String assetHabitese = 'assets/habite_se.png';
  final String assetLicencaAmbiental = 'assets/licenca_ambiental.png';
  final String assetMtrNr = 'assets/mtr_nr.png';
  final String assetNossoContato = 'assets/nosso_contato.png';
  final String assetNossoSite = 'assets/nosso_site.png';
  final String assetOutorga = 'assets/outorga.png';
  final String assetTesteEstanqueidade = 'assets/teste_estanqueidade.png';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBarComponent('Home'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                width: double.maxFinite,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    'MENU FACIL',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFb4c8c6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                ),
              ),
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.only(top: 10),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: (1 / .7),
                children: [
                  CustomButtomComponent(
                      imageAsset: assetAnp, routeName: 'ANP_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetCorpoBombeiro,
                      routeName: 'CORPO_DE_BOMBEIRO_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetCrc, routeName: 'CRC_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetHabitese, routeName: 'HABITA_SE_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetLicencaAmbiental,
                      routeName: 'LICENCA_AMBIENTAL_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetMtrNr, routeName: 'MTENRS_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetNossoContato,
                      routeName: 'NOSSO_CONTATO_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetNossoSite, routeName: 'NOSSO_SITE_VIEW'),
                  CustomButtomComponent(
                      imageAsset: assetOutorga, routeName: 'OUTORGA_VIEW'),
                  CustomButtomComponent(
                    imageAsset: assetTesteEstanqueidade,
                    routeName: 'TESTE_DE_ESTANQUEIDADE',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
