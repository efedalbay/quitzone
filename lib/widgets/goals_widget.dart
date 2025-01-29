import 'package:flutter/material.dart';

class GoalsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const GoalsWidget({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Icon(icon, color: Theme.of(context).colorScheme.onPrimary),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.star_rate, size: 25),
      ),
    );
  }
}