import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/menu_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Aplikasi Kantin YAY Makan',
      debugShowCheckedModeBanner: false,
      home: MenuListScreen(),
    );
  }
}
