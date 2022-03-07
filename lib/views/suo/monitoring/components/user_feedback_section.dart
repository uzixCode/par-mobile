import 'package:flutter/material.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/basecard.dart';

class UserFeedbackSection extends StatelessWidget {
  const UserFeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      label: "KELUHAN/SARAN PELANGGAN",
      trailing: Container(),
      leading: Container(),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              TextFormField(
                onTap: () {},
                decoration: const InputDecoration(
                  isDense: true,
                  hintText: "Cari Driver",
                  hintStyle: const TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 15, top: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Dani Bramantyo"),
                                      Text("04 Des 2021"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    decoration: BoxDecoration(
                                        color: allColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Keluhan Driver",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Driver kurang disiplin datang terlambat",
                                          maxLines: 10,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            text: 'Kategori: ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Kedisiplinan',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 12)),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
