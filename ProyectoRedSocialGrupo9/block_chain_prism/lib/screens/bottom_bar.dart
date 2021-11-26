import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'camera.dart';
import 'home.dart';
import 'search.dart';
import 'shop.dart';
import 'user.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = "/BottomBarScreen";

  const BottomBarScreen({Key? key}) : super(key: key);
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final List _pages = [
    const Home(),
    const Search(),
    const Camera(),
    const Shop(),
    const User(),
  ];
  int _selectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Theme.of(context).textSelectionColor,
          currentIndex: _selectedIndex,
          items: const [
            // Icono de Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: "Home",
              label: "Home",
            ),
            // Icono de Busqueda
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              tooltip: "Search",
              label: "Search",
            ),
            // Icono de FeedsScreen
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              tooltip: "Camera",
              label: "Camera",
            ),
             // Icono de Compras
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              tooltip: "Shop",
              label: "Shop",
            ),
            // Icono de Perfil
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              tooltip: "User",
              label: "User",
            ),
          ],
        ),
      ),
    );
  }
}

