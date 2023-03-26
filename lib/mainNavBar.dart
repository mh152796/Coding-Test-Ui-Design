import 'package:flutter/material.dart';

import 'home.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({Key? key}) : super(key: key);

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: HomePage(),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Container floatingActionButton() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white)
      ),
      child: FloatingActionButton(
        tooltip: 'floating action button',
        onPressed: () {  },
        child: Column(
          children: [
            Icon(Icons.sports_tennis,color: Colors.white,),
            Text('Play')
          ],
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 78, 66, 110),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.query_stats), label: 'Stats'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Career'),
        BottomNavigationBarItem(icon: Icon(Icons.golf_course), label: 'Course'),
      ],
     currentIndex: _selectedIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      iconSize: 25,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index){
        setState(() {
          _selectedIndex = index;
        });
      }
}
