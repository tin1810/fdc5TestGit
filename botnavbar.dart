import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Content Here for index $_selectedIndex "),
      ),
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
              title: Text("Features"), icon: Icon(Icons.featured_play_list)),
          BottomNavigationBarItem(
              title: Text("App"), icon: Icon(Icons.featured_play_list)),
          BottomNavigationBarItem(
              title: Text("App"), icon: Icon(Icons.featured_play_list))
        ],
      ),
    );
  }
}
