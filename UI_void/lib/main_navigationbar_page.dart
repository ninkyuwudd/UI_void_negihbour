import 'package:flutter/material.dart';
import 'package:ui_void/folder_navbarpage/jelajahi_page.dart';
import 'package:ui_void/folder_navbarpage/riwayat.dart';
import 'folder_navbarpage/home_page.dart';
import 'folder_navbarpage/riwayat.dart';
import 'folder_navbarpage/tetangga.dart';
import 'folder_navbarpage/profile_page.dart';
import 'folder_navbarpage/jelajahi_page.dart';


class ButonNavbar extends StatefulWidget {
  const ButonNavbar({super.key});

  @override
  State<ButonNavbar> createState() => _ButonNavbarState();
}

class _ButonNavbarState extends State<ButonNavbar> {


    // int _selectedIndex = 0;
  int currentpage = 0;

  final _pageOption = [
    const HomePage(),
    const Riwayat(),
    const TetanggaPage(),
    const JelajahiPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[currentpage],
      bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_rounded) ,label: "Beranda"),
            NavigationDestination(icon: Icon(Icons.document_scanner_outlined) ,label: "Riwayat"),
            NavigationDestination(icon: Icon(Icons.people) ,label: "Tetangga"),
            NavigationDestination(icon: Icon(Icons.pin_drop) ,label: "Jelajahi"),
            NavigationDestination(icon: Icon(Icons.person) ,label: "Akun")
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentpage = index;
            });
          },
          selectedIndex: currentpage,
        ),
    );
  }
}