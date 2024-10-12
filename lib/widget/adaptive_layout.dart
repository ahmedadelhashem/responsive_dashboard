import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.MobileLayout,required this.TabletLayout,required this.DesktopLayout});
  final WidgetBuilder MobileLayout,TabletLayout,DesktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.minWidth<600){
          return MobileLayout(context);
        }
        else if(constraints.maxWidth<900){
          return TabletLayout(context);
        }
        else{
          return DesktopLayout(context);
        }
      });
  }
}