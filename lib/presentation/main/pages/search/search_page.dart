import 'package:flutter/material.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/translations/l10n.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Search',
      ),
    ));
  }
}
