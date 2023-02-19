
import 'package:flutter/material.dart';
import 'package:ncb/MainScreens/Complaints.dart';
import 'package:ncb/MainScreens/Events.dart';
import 'package:ncb/MainScreens/Home.dart';
import 'package:ncb/MainScreens/Profile.dart';

late BuildContext context1;

class HomeScreen extends StatefulWidget {
  int selectedIndex = 0;

  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    Home(),
    Events(),
    Complaints(),
    Profile()
  ];

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    // bannerService.getBanners();
    super.initState();
  }

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    context1 = context;
    return Scaffold(
      // body:_pages[_selectedIndex],   // only one screen alive others get destroyed
      body: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            IndexedStack(
              // all alive so keep the state of others screens as well
              index: _selectedIndex,
              children: _pages,
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        mouseCursor: SystemMouseCursors.grab,
        iconSize: 22,
        selectedFontSize: 14,
        // selected items
        selectedIconTheme:
        const IconThemeData(color: Colors.white, size: 24),
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        unselectedIconTheme: const IconThemeData(
          // Unselected options
            color: Colors.black26),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 50,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Complaints',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

