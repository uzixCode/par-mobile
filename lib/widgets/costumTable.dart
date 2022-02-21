import 'package:flutter/material.dart';

class CostumTable extends StatefulWidget {
  CostumTable(
      {Key? key,
      this.horizontalTableAlignment = MainAxisAlignment.start,
      this.verticalTableAlignment = MainAxisAlignment.start,
      this.defaultRowAlignment = CrossAxisAlignment.start,
      this.row = const []})
      : super(key: key);
  MainAxisAlignment? horizontalTableAlignment;
  MainAxisAlignment? verticalTableAlignment;
  CrossAxisAlignment? defaultRowAlignment;
  List<List<Widget>> row;

  @override
  State<CostumTable> createState() => _CostumTableState();
}

class _CostumTableState extends State<CostumTable> {
  List<Widget> column = [];
  List<MainAxisAlignment> verticalTableAlignmentList = [];
  List<MainAxisAlignment> defaultRowAlignmentList = [];
  void initData() {
    column.clear();
    for (var i = 0; i < widget.row[0].length; i++) {
      List<Widget> temp = [];
      for (var u = 0; u < widget.row.length; u++) {
        temp.add(widget.row[u][i]);
      }
      column.add(Column(
        mainAxisAlignment: widget.verticalTableAlignment!,
        crossAxisAlignment: widget.defaultRowAlignment!,
        children: temp,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return Row(
      mainAxisAlignment: widget.horizontalTableAlignment!,
      children: column,
    );
  }
}
