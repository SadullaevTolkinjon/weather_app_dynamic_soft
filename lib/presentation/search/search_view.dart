import 'package:flutter/material.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';
import 'package:weather_app_dynamic/presentation/search/components/modal_bottom_sheet_view.dart';

import 'package:weather_app_dynamic/presentation/search/components/search_textfield.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SearchTextfield(
            onSuggestionTap: (v) {
              showModalBottomSheet(
                context: context,
              
              //  backgroundColor: AppColor.kPrimaryColor2.withOpacity(0.5),
              //   showDragHandle: true,
                isScrollControlled: true,
                builder: (context) => WeatherBottomSheet(
                  city: v.item!,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
