import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Takvim ekranı"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
