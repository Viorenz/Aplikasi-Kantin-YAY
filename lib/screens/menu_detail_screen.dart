import 'package:flutter/material.dart';

import '../models/menu.dart';
import '../widgets/text_google.dart';

class MenuDetailScreen extends StatelessWidget {
  final Menu menu;
  const MenuDetailScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const TextGoogle(
          "Detail Menu YAY Makan",
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.11),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.dinner_dining_outlined,
                  size: 85,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            const SizedBox(height: 24),

            const TextGoogle("Nama Menu:", fontSize: 14, color: Colors.grey),
            const SizedBox(height: 4),
            TextGoogle(menu.nama, fontSize: 22, fontWeight: FontWeight.bold),
            const SizedBox(height: 20),
            const TextGoogle("Harga:", fontSize: 14, color: Colors.grey),
            const SizedBox(height: 4),
            TextGoogle(
              "Rp ${menu.harga.toStringAsFixed(0)}",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
