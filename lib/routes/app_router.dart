import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/achievement_screen.dart';
import '../screens/calendar_screen.dart';
import '../screens/counter_screen.dart';
import '../screens/goal_screen.dart';
import '../screens/health_screen.dart';
import '../screens/home_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/login_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/register_screen.dart';
import '../screens/settings_screen.dart';

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
      path: '/achievement',
      builder: (context, state) => const AchievementScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/calendar',
      builder: (context, state) => const CalendarScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/health',
      builder: (context, state) => const HealthScreen(),
    ),
    GoRoute(
      path: '/goals',
      builder: (context, state) => const GoalScreen(),
    ),
    GoRoute(
      path: '/counter',
      builder: (context, state) => const CounterScreen(),
    ),
  ],
);