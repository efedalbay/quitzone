import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ödül ekranı"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
