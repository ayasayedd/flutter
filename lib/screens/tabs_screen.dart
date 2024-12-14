// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';
import '../models/trip.dart';

class TabsScreen extends StatefulWidget {
  // const TabsScreen({Key key}) : super(key: key);

  final List<Trip> favoriteTrips;

  TabsScreen(this.favoriteTrips);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  List<Map<String, Object>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'Screen': CategoriesScreen(),
        'Title': 'All Trips ',
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'Favorite trips ',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor:  Color(0xff305cac),
        title: Text(_screens[_selectedScreenIndex]['Title']),
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor:  const Color(0xff305cac),
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor:  const Color(0xff305cac),
            icon: Icon(Icons.star),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
