import 'package:flutter/material.dart';
import 'package:lesson36_homework/pages/main_pages/calendar_page.dart';
import 'package:lesson36_homework/pages/main_pages/home.dart';
import 'package:lesson36_homework/pages/main_pages/schedule_page.dart';
import 'package:lesson36_homework/utils/extensions/extensions.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SchedulePage(),
    CalendarPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.grey.shade400)),
            margin: EdgeInsets.only(right: 30),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notifications_none_sharp,
              color: Colors.grey.shade300,
            ),
          )
        ],
        toolbarHeight: 130,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    text: "Welcome,",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                        color: Colors.white),
                    children: [TextSpan(text: " Mangcoding")]),
              ),
              20.h(),
              Text(
                "Let's schedule your activities",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                    letterSpacing: 1.4),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
