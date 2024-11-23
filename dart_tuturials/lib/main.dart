import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomAppBarScreen(),
    );
  }
}

class CustomAppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120), // Adjust height as needed
        child: AppBar(
          title: Text("Chats"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30), // Curving bottom corners
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Enjoy encrypted and secure chat.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 80,
            color: Colors.blue,
            child: BottomNavigationBar(
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  label: "Calls",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),
                  label: "Contacts",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.analytics),
                  label: "Analytics",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: "Chats",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
