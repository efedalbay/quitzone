import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/calendar.dart';
import '../screens/home_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/notification.dart';
import '../screens/prize.dart';
import '../screens/profile.dart';
import '../screens/set.dart';
import '../screens/time.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/prize',
      builder: (context, state) => const PrizeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SetScreen(),
    ),
    GoRoute(
      path: '/time',
      builder: (context, state) => const TimeScreen(),
    ),
    GoRoute(
      path: '/calendar',
      builder: (context, state) => const CalendarScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationScreen(),
    ),
  ],
);