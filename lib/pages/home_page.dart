import 'package:flutter/material.dart';
import 'package:learningdart/components/bottom_nav_bar.dart';
import 'package:learningdart/pages/cart_page.dart';
import 'package:learningdart/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // When the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // pages to display
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      // shop noww page
      const ShopPage(),

      // cart page
      CartPage(),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon: Icon(Icons.menu, color: Colors.black,),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        )
          )

      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // Logo
            DrawerHeader(
              child: Image.asset(
                'lib/images/blacklogo.png',
                // color: Colors.white,
              ) 
              )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
