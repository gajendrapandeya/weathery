// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/data_sources/service/current_location_service.dart' as _i6;
import '../core/data/data_sources/source/remote/current_location_remote_data_source.dart'
    as _i14;
import '../core/data/data_sources/source/remote/current_location_remote_data_source_impl.dart'
    as _i15;
import '../core/data/repositories/current_location_repo_impl.dart' as _i17;
import '../core/domain/repositories/current_location_repo.dart' as _i16;
import '../core/domain/usecases/current_location_usecase.dart' as _i18;
import '../core/domain/usecases/current_location_usecase_impl.dart' as _i19;
import '../core/network/network_info.dart' as _i4;
import '../core/presentation/cubit/current_location/current_location_cubit.dart'
    as _i20;
import '../features/home/data/data_sources/service/weather_service.dart' as _i5;
import '../features/home/data/data_sources/source/remote/weather_remote_data_source.dart'
    as _i7;
import '../features/home/data/data_sources/source/remote/weather_remote_data_source_impl.dart'
    as _i8;
import '../features/home/data/repositories/weather_repo_impl.dart' as _i10;
import '../features/home/domain/repositories/weather_repo.dart' as _i9;
import '../features/home/domain/usecases/weather_usecase.dart' as _i11;
import '../features/home/domain/usecases/weather_usecase_impl.dart' as _i12;
import '../features/home/presentation/blocs/cubits/current_condition_cubit.dart'
    as _i13;
import 'app_module.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.Dio>(appModule.dio);
  gh.factory<_i4.NetworkInfo>(() => _i4.NetworkInfoImpl());
  gh.factory<_i5.WeatherService>(() => _i5.WeatherService(get<_i3.Dio>()));
  gh.factory<_i6.CurrentLocationService>(
      () => _i6.CurrentLocationService(get<_i3.Dio>()));
  gh.factory<_i7.WeatherRemoteDataSource>(
      () => _i8.WeatherRemoteDataSourceImpl(get<_i5.WeatherService>()));
  gh.factory<_i9.WeatherRepo>(() => _i10.WeatherRepoImpl(
        get<_i7.WeatherRemoteDataSource>(),
        get<_i4.NetworkInfo>(),
      ));
  gh.factory<_i11.WeatherUsecase>(
      () => _i12.WeatherUsecaseImpl(get<_i9.WeatherRepo>()));
  gh.factory<_i13.CurrentConditionCubit>(
      () => _i13.CurrentConditionCubit(get<_i11.WeatherUsecase>()));
  gh.factory<_i14.CurrentLocationRemoteDataSource>(() =>
      _i15.CurrentLocationRemoteDataSourceImpl(
          get<_i6.CurrentLocationService>()));
  gh.factory<_i16.CurrentLocationRepo>(() => _i17.CurrentLocationRepoImpl(
        get<_i14.CurrentLocationRemoteDataSource>(),
        get<_i4.NetworkInfo>(),
      ));
  gh.factory<_i18.CurrentLocationUsecase>(
      () => _i19.CurrentLocationUsecaseImpl(get<_i16.CurrentLocationRepo>()));
  gh.factory<_i20.CurrentLocationCubit>(
      () => _i20.CurrentLocationCubit(get<_i18.CurrentLocationUsecase>()));
  return get;
}

class _$AppModule extends _i21.AppModule {}
