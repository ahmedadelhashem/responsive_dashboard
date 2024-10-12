
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/views/drawer_item.dart';

class Customdrawerlist extends StatefulWidget {
  Customdrawerlist({super.key});

  @override
  State<Customdrawerlist> createState() => _CustomdrawerlistState();
}

class _CustomdrawerlistState extends State<Customdrawerlist> {
  List<DrawerItemmodel> model = [
    DrawerItemmodel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemmodel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemmodel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemmodel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemmodel(title: 'My Investments', image: Assets.imagesMyInvestments)
  ];
  int ActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: model.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (ActiveIndex != index) {
              setState(() {
                ActiveIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemmodel: model[index],
              isActive: ActiveIndex == index,
            ),
          ),
        );
      },
    );
  }
}
