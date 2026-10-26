import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/menu.dart';
import '../widgets/text_google.dart';
import 'menu_detail_screen.dart';
import 'add_menu_screen.dart';

class MenuListScreen extends StatefulWidget {
  const MenuListScreen({super.key});

  @override
  State<MenuListScreen> createState() => _MenuListScreenState();
}

class _MenuListScreenState extends State<MenuListScreen> {
  final List<Menu> _daftarMenu = [
    Menu(nama: 'Kwetiau Spesial', harga: 15000),
    Menu(nama: 'Mie Ayam Bakso Pangsit', harga: 12000),
    Menu(nama: 'Es Kelapa Jeruk', harga: 23000),
    Menu(nama: 'Ayam Bawang Putih', harga: 18000),
    Menu(nama: 'Es Kuwut Bali', harga: 10000),
    Menu(nama: 'Pisang Goreng Karamel', harga: 12000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextGoogle(
          "Daftar Menu YAY Makan",
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const TextGoogle(
              "Silakan pilih menu yang enak",
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _daftarMenu.length,
              itemBuilder: (context, index) {
                final menu = _daftarMenu[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.dinner_dining_outlined,
                      color: Colors.greenAccent,
                    ),
                    title: TextGoogle(
                      menu.nama,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    subtitle: TextGoogle(
                      "Rp ${menu.harga.toStringAsFixed(0)}",
                      color: Colors.blueGrey[700],
                      fontSize: 14,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      Get.to(() => MenuDetailScreen(menu: menu));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () async {
          final result = await Get.to(() => const AddMenuScreen());
          if (result != null && result is Menu) {
            setState(() {
              _daftarMenu.add(result);
            });
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
