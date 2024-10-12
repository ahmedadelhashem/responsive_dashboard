import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard.dart';

void main() {
  runApp(const Responsivedashboard());
}
class Responsivedashboard extends StatelessWidget {
  const Responsivedashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Dashboard()
      
    );
  }
}