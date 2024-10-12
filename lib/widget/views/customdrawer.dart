import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/views/customdrawer_listitem.dart';
import 'package:responsive_dashboard/widget/views/drawer_item.dart';
import 'package:responsive_dashboard/widget/views/user_info.dart';

class Customdrawer extends StatelessWidget {
   Customdrawer({super.key});
List<DrawerItemmodel>draweritem=[
  DrawerItemmodel(title: 'Setting system', image: Assets.imagesSettings),
  DrawerItemmodel(title: 'Logout account', image: Assets.imagesLogout)
];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          userinfolisttile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
              SizedBox(height: 8,),
         Customdrawerlist(),
         SizedBox(height: 140,),
         ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: draweritem.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(isActive: true,drawerItemmodel: draweritem[index]),
            );
          })
        ],
      ),
    );
  }
}

