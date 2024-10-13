import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/AllExpenses_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/views/AllExpenses_item.dart';

class AllExpensesitemlistview extends StatefulWidget {
  AllExpensesitemlistview({super.key});

  @override
  State<AllExpensesitemlistview> createState() => _AllExpensesitemlistviewState();
}

class _AllExpensesitemlistviewState extends State<AllExpensesitemlistview> {
  final List<AllExpensesItem> items = [
    AllExpensesItem(
        image: Assets.imagesBalance,
        title: 'Balance',
        data: 'April2024',
        price: r'$20,129'),
    AllExpensesItem(
        image: Assets.imagesIncome,
        title: 'income',
        data: 'April2024',
        price: r'$20,129'),
    AllExpensesItem(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        data: 'April2024',
        price: r'$20,129')
  ];
 int selectindex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: item.map((e) => Expanded(child: AllexpensesItem(allExpensesItem: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectindex=index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AllexpensesItem(
                  allExpensesItem: item,
                  isSelected: selectindex==index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectindex=index;
                });
              },
              child: AllexpensesItem(
              allExpensesItem: item,
              isSelected: selectindex==index,
            ),
            ),
          );
        }
      }).toList(),
    );
  }
}
