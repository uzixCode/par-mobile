import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/tabletile.dart';

class CostumTableRow extends StatelessWidget {
  CostumTableRow(
      {Key? key, this.absen, this.izin, this.libur, required this.index})
      : super(key: key);
  bool? libur;
  bool? izin;
  bool? absen;
  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TableTile(
            background: index % 2 != 0 ? allColor.light_grey : Colors.white,
            content: "21 Jan",
          ),
        ),
        Expanded(
          child: TableTile(
            background: index % 2 != 0 ? allColor.light_grey : Colors.white,
            content: "Kamis",
          ),
        ),
        libur != null && libur == true
            ? Expanded(
                flex: 3,
                child: TableTile(
                  background: allColor.libur_red,
                  fontColor: Colors.white,
                  content: "LIBUR",
                ))
            : Container(),
        izin != null && izin == true
            ? Expanded(
                flex: 3,
                child: TableTile(
                  background: allColor.izin_yellow,
                  fontColor: Colors.white,
                  content: "IZIN",
                ))
            : Container(),
        absen != null && absen == true
            ? Expanded(
                flex: 3,
                child: TableTile(
                  background: Colors.black,
                  fontColor: Colors.white,
                  content: "ABSEN",
                ))
            : Container(),
        absen == null && izin == null && libur == null
            ? Expanded(
                child: TableTile(
                    background:
                        index % 2 != 0 ? allColor.light_grey : Colors.white,
                    content: "08:00-\n17:00"))
            : Container(),
        absen == null && izin == null && libur == null
            ? Expanded(
                child: TableTile(
                    background:
                        index % 2 != 0 ? allColor.light_grey : Colors.white,
                    content: "08:06"))
            : Container(),
        absen == null && izin == null && libur == null
            ? Expanded(
                child: TableTile(
                    background:
                        index % 2 != 0 ? allColor.light_grey : Colors.white,
                    content: "21:45"))
            : Container(),
      ],
    );
  }
}
