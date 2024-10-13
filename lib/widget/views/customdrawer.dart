import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/views/InActiveDraweritem.dart';
import 'package:responsive_dashboard/widget/views/customdrawer_listitem.dart';
import 'package:responsive_dashboard/widget/views/user_info.dart';

class Customdrawer extends StatelessWidget {
  Customdrawer({super.key});
  List<DrawerItemmodel> draweritem = [
    DrawerItemmodel(title: 'Setting system', image: Assets.imagesSettings),
    DrawerItemmodel(title: 'Logout account', image: Assets.imagesLogout)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: userinfolisttile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
          Customdrawerlist(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDraweritem(
                  drawerItemmodel: DrawerItemmodel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                InActiveDraweritem(
                  drawerItemmodel: DrawerItemmodel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
