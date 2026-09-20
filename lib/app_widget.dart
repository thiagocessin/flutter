import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const new({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          home: HomePage(),
        );
      },
      animation: AppController.instance,
    );
  }
}
