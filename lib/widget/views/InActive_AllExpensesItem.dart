import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/AllExpenses_item.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/AllExpenses_headeritem.dart';

class ActiveAllexpensesItem extends StatelessWidget {
  const ActiveAllexpensesItem({
    super.key,
    required this.allExpensesItem,
  });

  final AllExpensesItem allExpensesItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderitem(
            colorimage: Colors.white,
            background: Colors.white.withOpacity(0.10000000149011612),
            coloricon: Colors.white,
            image: allExpensesItem.image),
          SizedBox(height: 34),
          Text(allExpensesItem.title,style: Style.StyleMedium16.copyWith(color: Colors.white),),
          SizedBox(height:8,),
          Text(allExpensesItem.data,style: Style.StyleReqular14.copyWith(color: Colors.white),),
          SizedBox(height: 8),
          Text(allExpensesItem.price,style: Style.StyleSemiBold24.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}

class InActiveAllexpensesItem extends StatelessWidget {
  const InActiveAllexpensesItem({super.key, required this.allExpensesItem});
 final AllExpensesItem allExpensesItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderitem(image: allExpensesItem.image),
          SizedBox(height: 34),
          Text(allExpensesItem.title,style: Style.StyleMedium16,),
          SizedBox(height:8,),
          Text(allExpensesItem.data,style: Style.StyleReqular14,),
          SizedBox(height: 8),
          Text(allExpensesItem.price,style: Style.StyleSemiBold24,)
        ],
      ),
    );
  }
}
