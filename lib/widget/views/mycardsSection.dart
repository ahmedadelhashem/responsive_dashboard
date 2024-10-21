import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/style.dart';
import 'package:responsive_dashboard/widget/views/dots-indicator.dart';
import 'package:responsive_dashboard/widget/views/mycard_page_view.dart';

class Mycardssection extends StatefulWidget {
  const Mycardssection({super.key});

  @override
  State<Mycardssection> createState() => _MycardssectionState();
}

class _MycardssectionState extends State<Mycardssection> {
  late PageController pageController;
  int currentpageindex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentpageindex = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 420,
            child: Text(
              'My Card',
              style: Style.StyleSemiBold16,
            )),
        SizedBox(
          height: 20,
        ),
        MycardPageView(pageController: pageController),
        SizedBox(
          height: 20,
        ),
        Dotsindicator(currentpageindex: currentpageindex,)
      ],
    );
  }
}
