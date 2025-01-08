import 'package:flutter/material.dart';
import 'package:ukl_paket1/pages/splash_screen.dart';
import 'package:ukl_paket1/main.dart';
import 'package:ukl_paket1/pages/home_screen.dart';
import 'package:ukl_paket1/pages/transaksi_screen.dart';

class NavBar extends StatefulWidget {
  final int selectedItem;
  const NavBar({super.key, required this.selectedItem});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedNav = 0;
  void changeSelectedNav(int index) {
    setState(() {
      selectedNav = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/home');
    }
    else if (index == 1){
      Navigator.pushNamed(context, '/transaksi');
    }
    else if (index == 2){
      Navigator.pushNamed(context, '/');
    }
    else if (index == 3){
      Navigator.pushNamed(context, '/');
    }
    else if (index == 4){
      Navigator.pushNamed(context, '/account');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.timelapse_rounded),
          label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Daftar Tukang'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet),
          label: 'Isi Saldo'),
          BottomNavigationBarItem(icon: Icon(Icons.person_3),
          label: 'Akun'),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNav,
    );
    
  }
}