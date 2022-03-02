import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/costumFlatButton.dart';

class PreTripCheck extends StatelessWidget {
  const PreTripCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Kendaraan dalam keadaan 100% prima!",
                      style: TextStyle(color: allColor.secondary),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return LayoutBuilder(
                          builder: (context, card) => Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.bolt,
                                  color: allColor.secondary,
                                  size: card.maxWidth * 0.35,
                                ),
                                Text(
                                  "Electric",
                                  style: TextStyle(
                                      color: allColor.secondary,
                                      fontSize: card.maxWidth * 0.12),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CostumFlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        color: allColor.green,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
