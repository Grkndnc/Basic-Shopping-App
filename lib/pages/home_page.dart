import 'package:flutter/material.dart';
import 'package:practice_nike/components/bottom_nav_bar.dart';
import 'package:practice_nike/pages/CardPage.dart';
import 'package:practice_nike/pages/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const Shoppage(),
    const Cardpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyBottomBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nikelogo.jpg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Divider(
                    color: Colors.grey.shade800,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedindex],
    );
  }
}
