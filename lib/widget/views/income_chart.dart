
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class incomechart extends StatefulWidget {
  const incomechart({super.key});

  @override
  State<incomechart> createState() => _incomechartState();
}

class _incomechartState extends State<incomechart> {
  int activeindex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getchartData()));
  }

  PieChartData getchartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0,pieTouchResponse){
          activeindex=  pieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {
            
          });
        }
      ),
      sectionsSpace: 0, 
      sections: [
      PieChartSectionData(
        radius: activeindex==0?60:50,
        showTitle: false,
        value: 40, color: Color(0xFF208BC7)),
      PieChartSectionData(
        radius: activeindex==1?60:50,
        showTitle: false,value: 25, color: Color(0xFF4DB7F2)),
      PieChartSectionData(
        radius: activeindex==2?60:50,
        showTitle: false,value: 20, color: Color(0xFF064060)),
      PieChartSectionData(
        radius: activeindex==3?60:50,
        showTitle: false,value: 22, color: Color(0xFFE2DECD))
    ]);
  }
}




