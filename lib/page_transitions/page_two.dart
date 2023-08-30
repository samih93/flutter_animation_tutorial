import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Page Two"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
