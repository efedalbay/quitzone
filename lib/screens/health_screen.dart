import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sağlık bilgileri"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
