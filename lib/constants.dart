import 'package:brezovica/model/bus/bus.dart';
import 'package:flutter/cupertino.dart';

abstract class Constants {
  static const Color mainColor = Color.fromRGBO(37, 53, 81, 1);
  static const String zetBusUrl =
      'https://www.zet.hr/UserDocsImages/Autobusne%20linije%20-%20korona/';
  static const List<Bus> busevi = [
    Bus(number: 110, type: BusType.botinec(description: 'Savski most - Botinec'),),
    Bus(number: 132, type: BusType.brezovica(description: 'Savski most - Goli Breg - Brezovica'),),
    Bus(number: 159, type: BusType.obrez(description: 'Savski most - Strmec Odranski'),),
    Bus(number: 160, type: BusType.obrez(description: 'Savski most - Lipnica - Havidić selo'),),
    Bus(number: 161, type: BusType.brezovica(description: 'Savski most - Kupinečki Kraljevec - Štrpet'),),
    Bus(number: 162, type: BusType.brezovica(description: 'Savski most - Ašpergeri'),),
    Bus(number: 163, type: BusType.obrez(description: 'Savski most - Donji Trpuci - Gornji Trpuci'),),
  ];
}
