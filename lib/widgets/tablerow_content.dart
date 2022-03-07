import 'package:flutter/material.dart';

// class TableRowContent extends StatelessWidget {
//   final String title;
//   final String valueContent;
//   final Widget? widgetCustom;
//   final BoxBorder? border;
//   const TableRowContent({Key? key, required this.title, required this.valueContent, this.widgetCustom, this.border}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TableRow(
//       decoration: const BoxDecoration(
//           border: border),
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           child: Text(
//             title,
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           child: widgetCustom ??
//               Text(
//                 ": $valueContent",
//                 style: const TextStyle(color: Colors.white),
//               ),
//         ),
//       ],
//     );
//   }
// }

TableRow tableRowContent(
    {required String title,
    required String valueContent,
    Widget? widgetCustom,
    BoxBorder? border = const Border(bottom: BorderSide(color: Colors.white))}) {
  return TableRow(
    decoration: BoxDecoration(border: border),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: widgetCustom ??
            Text(
              ": $valueContent",
              style: const TextStyle(color: Colors.white),
            ),
      ),
    ],
  );
}
