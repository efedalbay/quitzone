import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Zamanla sayılan bilgilerin ekranı"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
