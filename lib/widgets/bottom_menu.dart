import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            hoverColor: Theme.of(context).colorScheme.onSecondary,
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.go("/calendar");
            },
            icon: const Icon(Icons.calendar_month),
          ),
          IconButton(
            hoverColor: Theme.of(context).colorScheme.onSecondary,
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.go("/home");
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
            hoverColor: Theme.of(context).colorScheme.onSecondary,
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              context.go("/profile");
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}