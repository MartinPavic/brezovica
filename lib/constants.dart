import 'package:brezovica/model/bus/bus.dart';
import 'package:flutter/cupertino.dart';

abstract class Constants {
  static const Color mainColor = Color.fromRGBO(37, 53, 81, 1);
  static const String zetBusUrl =
      'https://www.zet.hr/UserDocsImages/Autobusne%20linije%20-%20korona/';
  static const String contentfulUrl = 'https://cdn.contentful.com/';
  static const String contentfulSpaceId = 'r3npjoykim95';
  static const String contentfulEnvironmentId = 'master';
  static List<Bus> busevi = [
    Bus(
        number: 110,
        type: const BusType.botinec(description: 'Savski most - Botinec'),
        url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/110.pdf')),
    Bus(
      number: 132,
      type: const BusType.brezovica(
          description: 'Savski most - Goli Breg - Brezovica'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/132.pdf'),
    ),
    Bus(
      number: 159,
      type: const BusType.obrez(description: 'Savski most - Strmec Odranski'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/159.pdf'),
    ),
    Bus(
      number: 160,
      type: const BusType.obrez(
          description: 'Savski most - Lipnica - Havidić selo'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/160.pdf'),
    ),
    Bus(
      number: 161,
      type: const BusType.brezovica(
          description: 'Savski most - Kupinečki Kraljevec - Štrpet'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/161.pdf'),
    ),
    Bus(
      number: 162,
      type: const BusType.brezovica(description: 'Savski most - Ašpergeri'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/162.pdf'),
    ),
    Bus(
      number: 163,
      type: const BusType.obrez(
          description: 'Savski most - Donji Trpuci - Gornji Trpuci'),
      url: Uri.https('zet.hr', '/UserDocsImages/Autobusne%20linije%20-%20korona/163.pdf'),
    ),
  ];
  
}
