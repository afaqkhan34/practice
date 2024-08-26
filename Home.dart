import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Welcome, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Here is your dashboard where you can manage your profile and settings.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('View Profile '),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
