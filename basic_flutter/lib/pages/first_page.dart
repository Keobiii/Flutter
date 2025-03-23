import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.go('/second?data=Hello from First Page');
            context.pushNamed('/second', extra: "Hello World");
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
