part of 'search_cubit.dart';

abstract class SearchState {}

@freezed
class SearchBuidable extends SearchState with _$SearchBuidable {
  const factory SearchBuidable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    WeatherModel? data,
  }) = _SearchBuidable;
}
