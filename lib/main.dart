import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/app_router.dart';
import 'themes/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp.router(
        title: 'Flutter App',
        themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: router, 
        debugShowCheckedModeBanner: false, 
      );
    });
  }
}