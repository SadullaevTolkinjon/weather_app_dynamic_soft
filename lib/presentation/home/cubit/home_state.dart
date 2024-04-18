part of 'home_cubit.dart';

abstract class HomeState {}

@freezed
class HomeBuildableState extends HomeState with _$HomeBuildableState {
  const factory HomeBuildableState({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(false) bool isSuccess,
    @Default(0) int currentIndex,
    @Default(0) int selected_forecast,
    WeatherModel? data,
  }) = _HomeBuildableState;
}
