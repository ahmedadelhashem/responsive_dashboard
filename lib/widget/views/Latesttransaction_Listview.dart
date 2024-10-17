import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/Latesttransaction_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/views/userinfolist.dart';

class LatesttransactionListview extends StatelessWidget {
  const LatesttransactionListview({super.key});
static  List<LatesttransactionModel>items=[
  LatesttransactionModel(title: 'Madrani Andi', image: Assets.imagesAvatar3, subtitle: 'Madraniadi20@gmail.com'),
   LatesttransactionModel(title: 'Josua Nunito', image: Assets.imagesAvatar3, subtitle: 'Josh Nunito@gmail.com'),
    LatesttransactionModel(title: 'Madrani Andi', image: Assets.imagesAvatar3, subtitle: 'Madraniadi20@gmail.com'),
];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: userinfo(latesttransactionModel: e))).toList(),
      ),
    );
  }
}
 

 // لو عدد كبير تستخدمه
// SizedBox(
//       height: 80,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context,Index){
//         return IntrinsicWidth(
//           child: userinfo(
//             latesttransactionModel: items[Index]),
//         );
//       }),
//     );
