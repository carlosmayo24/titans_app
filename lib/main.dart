import 'package:flutter/material.dart';
import 'package:titans_app/config/app_router.dart';
import 'package:titans_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return  MaterialApp.router
    (
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
    );
  }
}
