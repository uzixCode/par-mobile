import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class CheckDetailRow extends StatefulWidget {
  CheckDetailRow(
      {Key? key,
      required this.label,
      this.defaultState = true,
      this.onValueChange,
      this.labelOption1 = "Normal",
      this.labelOption2 = "Tidak Berfungsi"})
      : super(key: key);
  String label;
  String labelOption1;
  String labelOption2;
  bool defaultState;
  final ValueChanged<bool>? onValueChange;
  @override
  State<CheckDetailRow> createState() => _CheckDetailRowState();
}

class _CheckDetailRowState extends State<CheckDetailRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: Text(widget.label))),
          Expanded(
              child: Row(
            children: [
              InkWell(
                onTap: () => setState(() {
                  widget.defaultState = true;
                  if (widget.onValueChange != null)
                    widget.onValueChange!(widget.defaultState);
                }),
                child: Icon(
                  Icons.radio_button_checked,
                  color: widget.defaultState ? allColor.green : allColor.grey,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(widget.labelOption1))),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              InkWell(
                onTap: () => setState(() {
                  widget.defaultState = false;
                  if (widget.onValueChange != null)
                    widget.onValueChange!(widget.defaultState);
                }),
                child: Icon(
                  Icons.radio_button_checked,
                  color: !widget.defaultState ? allColor.green : allColor.grey,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(widget.labelOption2),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
