import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/domain/repository/main_repository.dart';
import 'package:weather_app_dynamic/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  final MainRepository _repository;
  HomeCubit(this._repository) : super(const HomeBuildableState());

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  fetchCurrentWeather() async {
    build((buildable) =>
        buildable.copyWith(loading: true, failed: false, success: false));
    try {
      final data = _repository.getCategories();
      build((buildable) =>
          buildable.copyWith(loading: false, failed: false, success: true));
    } catch (e) {
      build((buildable) =>
          buildable.copyWith(loading: false, failed: true, success: false));
    }
  }
}
