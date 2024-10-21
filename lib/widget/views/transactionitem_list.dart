import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transcationmodel.dart';
import 'package:responsive_dashboard/widget/views/transcation_item.dart';

class TransactionitemList extends StatelessWidget {
  const TransactionitemList({super.key});

 static List<Transcationmodel>items=[
  Transcationmodel(title: 'Cash Withdrawal', data: '13 Apr, 2022 ', amout:'\$20,129', iswithdrawal:true ),
  Transcationmodel(title: 'Juni Mobile App project', data: '13 Apr, 2022 at 3:30 PM', amout: r'$20,129', iswithdrawal: false),
  Transcationmodel(title: 'Landing Page project', data: '13 Apr, 2022 at 3:30 PM', amout: r'$2,000', iswithdrawal: false)
 ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
       return TranscationItem(transcationmodel: items[index]); 
      },
    );
  }
}