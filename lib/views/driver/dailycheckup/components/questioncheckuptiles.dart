import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/views/driver/dailycheckup/components/checkuptiles.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

class QuestionCheckUpTiles extends StatefulWidget {
  QuestionCheckUpTiles(
      {Key? key, required this.label, this.onValueChange, this.isYes = true})
      : super(key: key);
  String label;
  final ValueChanged<bool>? onValueChange;
  bool isYes;
  @override
  State<QuestionCheckUpTiles> createState() => _QuestionCheckUpTilesState();
}

class _QuestionCheckUpTilesState extends State<QuestionCheckUpTiles> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return CheckupTiles(
      label: widget.label,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CostumFlatButton(
                onTap: () {
                  if (widget.onValueChange != null) {
                    widget.isYes = false;
                    widget.onValueChange!(widget.isYes);
                    setState(() {});
                  }
                },
                padding: EdgeInsets.all(12),
                color: !widget.isYes ? allColor.light_red : allColor.secondary,
                child: Center(
                  child: Text(
                    "Tidak",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CostumFlatButton(
                onTap: () {
                  if (widget.onValueChange != null) {
                    widget.isYes = true;
                    widget.onValueChange!(widget.isYes);
                    setState(() {});
                  }
                },
                padding: EdgeInsets.all(12),
                color: widget.isYes ? allColor.green : allColor.secondary,
                child: Center(
                  child: Text(
                    "Ya",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
        ],
      ),
    );
  }
}
