import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/presentation/search/search_view.dart';
import 'package:weather_app_dynamic/utils/extension/extensions.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(const SearchView()).build(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
