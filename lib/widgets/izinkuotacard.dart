import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';

class IzinKuotaCard extends StatelessWidget {
  IzinKuotaCard(
      {Key? key, required this.color, required this.kuota, required this.label})
      : super(key: key);
  Color color;
  String label;
  String kuota;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.zero,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: LayoutBuilder(
          builder: (context, card) => Column(
            children: [
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: card.maxWidth * 0.20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  kuota,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: card.maxWidth * 0.30),
                ),
              ),
              Text(
                "hari",
                style: TextStyle(
                    color: Colors.white, fontSize: card.maxWidth * 0.20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
