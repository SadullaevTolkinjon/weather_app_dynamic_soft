import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';

import '../../../data/preferences/local/local_db.dart';
import '../../../domain/model/custom_city/local_cities.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
    required this.onSuggestionTap,
  });
  final Function(SearchFieldListItem<CustomCityModel>)? onSuggestionTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SearchField<CustomCityModel>(
        itemHeight: 50,
        searchInputDecoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          filled: true,
          hoverColor: AppColor.blue,
          focusColor: AppColor.kgrey,
          fillColor: AppColor.kgrey,
          hintText: "Search...",
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.kgrey),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.kgrey),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.kgrey),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.kgrey),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onSuggestionTap: (v) {
          onSuggestionTap!(v);
        },
        suggestions: PermanentDb()
            .getCities()
            .map(
              (e) => SearchFieldListItem<CustomCityModel>(
                e.name!,
                item: e,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(e.name.toString()),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
