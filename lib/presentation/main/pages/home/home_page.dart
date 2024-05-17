import 'package:flutter/material.dart';
import 'package:food/core/constants/routers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, categoryRoute);
              },
              icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
