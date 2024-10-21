import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/itemincome.dart';
import 'package:responsive_dashboard/widget/views/itemdetails.dart';

class Incomedetails extends StatelessWidget {
  const Incomedetails({super.key});
  static List items=[
    Itemincome(color: Color(0xFF208BC7), title: 'Design service', trailing: '40%'),
    Itemincome(color: Color(0xFF4DB7F2), title: 'Design product', trailing: '25%'),
    Itemincome(color: Color(0xFF064060), title: 'Product royalti', trailing: '20%'),
    Itemincome(color: Color(0xFFE2DECD), title: 'other', trailing: "22%")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return itemdetails(itemincome: items[index]);
      },
    );
  }
}