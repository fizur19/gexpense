import 'package:flutter/material.dart';
import 'package:gexpense/screens/all_category_screen.dart';
import 'package:gexpense/screens/settings_screens.dart';
import 'package:gexpense/screens/updated_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdatedDetailsScreen(),
    );
  }
}
