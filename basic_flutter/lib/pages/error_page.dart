import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String message;

  const ErrorPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error')),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 24, color: Colors.red),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
