import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/AllExpenses_item.dart';
import 'package:responsive_dashboard/widget/views/InActive_AllExpensesItem.dart';

class AllexpensesItem extends StatelessWidget {
  const AllexpensesItem({super.key, required this.allExpensesItem, required this.isSelected});
 final AllExpensesItem allExpensesItem;
 final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected? 
    ActiveAllexpensesItem(allExpensesItem: allExpensesItem)
    :InActiveAllexpensesItem(allExpensesItem: allExpensesItem);
  }
}

