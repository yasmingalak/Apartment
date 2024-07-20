import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.page.dart';
import 'dart:ui'; // For ImageFilter

import 'apartment_details.dart';
import 'home_page.dart'; // Import HomePage
import 'street_directory.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartment App',
      theme: ThemeData(
        primaryColor: Colors.green[700],
        hintColor: Colors.green[200],
        scaffoldBackgroundColor: Colors.green[50],
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Apartment Finder'),
            ],
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2196F3), Color(0xFF4CAF50)], // Blue and green
                end: Alignment.bottomRight,
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'), // Home tab
              Tab(icon: Icon(Icons.map), text: 'Street Directory'), // Street Directory tab
              Tab(icon: Icon(Icons.details), text: 'Apartment Details'), // Apartment Details tab
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            StreetDirectoryTab(),
            ApartmentDetailsTab(),
          ],
        ),
      ),
    );
  }
}
