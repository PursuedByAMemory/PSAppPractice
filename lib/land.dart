import 'package:flutter/material.dart';
import 'package:mupractice/screens/homescreen.dart';
import 'package:mupractice/screens/libraryscreen.dart';
import 'package:mupractice/screens/storescreen.dart';
import 'package:mupractice/screens/searchscreen.dart';


class Land extends StatefulWidget {
  const Land({super.key});

  @override
  State<Land> createState() {
    return _LandState();
  }
}

class _LandState extends State<Land> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayStation App'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.cyan,
        selectedIndex: currentPageIndex,
        destinations: 
        const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.inbox),
            icon: Icon(Icons.inbox_outlined),
            label: 'Library',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.store_mall_directory),
            icon: Icon(Icons.store_mall_directory_outlined),
            label: 'Store',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search),
            icon: Icon(Icons.search_sharp),
            label: 'Search',
          )
        ],
      ),
      body : _buildBody(currentPageIndex),
    );
  }
  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const LibraryScreen(); 
      case 2:
        return const StoreScreen(); 
      case 3:
        return const SearchScreen();
      default:
        return const Center(child: Text('Unknown Screen'));
    }
  }
}