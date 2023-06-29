import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 130, 149),
        title: Text('Notifikasi'),
      ),
      body: Center(
        child: Text(
          'Tidak ada notifikasi yang tersedia',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300
            ),
        ),
      ),
    );
  }
}
