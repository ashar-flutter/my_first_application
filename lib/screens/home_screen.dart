import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Navigating to About Screen')),
            );
            Future.delayed(const Duration(milliseconds: 300), () {
              Navigator.pushNamed(context, '/about');
            });
          },
          child: const Text('Go to About Me'),
        ),
      ),
    );
  }
}
