import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/utils/app_widgets/buildable_cubit.dart';

import '../../../domain/model/weather_model/weather_model.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends BuildableCubit<SearchState, SearchBuidable> {
  final MainRepository _repository;
  SearchCubit(this._repository) : super(const SearchBuidable());
  fetch(double lat, double long) async {
    build((buildable) =>
        buildable.copyWith(loading: true, failed: false, success: false));
    try {
      final WeatherModel data =
          await _repository.fetchCurrentWeather(lat, long, "current");
      build((buildable) => buildable.copyWith(
          loading: false, success: true, failed: false, data: data));
    } catch (e) {
      build((buildable) =>
          buildable.copyWith(loading: false, success: false, failed: true,error: e.toString()));
    }
  }
}
