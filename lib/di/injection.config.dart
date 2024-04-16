// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../data/api/api.dart' as _i4;
import '../data/api/auth_api.dart' as _i6;
import '../data/api/main_api.dart' as _i9;
import '../data/preferences/token_preferences.dart' as _i5;
import '../domain/repository/auth/auth/auth_repository.dart' as _i7;
import '../domain/repository/auth/auth/auth_repository_implementation.dart'
    as _i8;
import '../domain/repository/main_repository.dart' as _i11;
import '../domain/service/main_serivce.dart' as _i12;
import '../presentation/auth/login/bloc/login_bloc_bloc.dart' as _i10;
import '../presentation/home/cubit/home_cubit.dart' as _i13;
import 'data_module.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.Api>(() => _i4.Api());
    gh.factory<_i5.TokenPreference>(
        () => _i5.TokenPreference(gh<_i3.SharedPreferences>()));
    gh.factory<_i6.AuthApi>(() => _i6.AuthApi(gh<_i4.Api>()));
    gh.factory<_i7.AuthRepository>(() => _i8.AuthRepositoryImpl(
          gh<_i6.AuthApi>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i9.MainApi>(() => _i9.MainApi(
          gh<_i4.Api>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i10.LoginBlocBloc>(
        () => _i10.LoginBlocBloc(gh<_i7.AuthRepository>()));
    gh.factory<_i11.MainRepository>(
        () => _i11.MainRepository(gh<_i9.MainApi>()));
    gh.factory<_i12.MainService>(() => _i12.MainService(gh<_i9.MainApi>()));
    gh.factory<_i13.HomeCubit>(() => _i13.HomeCubit(gh<_i11.MainRepository>()));
    return this;
  }
}

class _$DataModule extends _i14.DataModule {}
