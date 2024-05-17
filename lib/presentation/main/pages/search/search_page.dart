import 'package:flutter/material.dart';

import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Search',
      ),
    ));
  }
}
