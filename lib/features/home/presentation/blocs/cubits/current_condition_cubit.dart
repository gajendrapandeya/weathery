import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/features/home/domain/entities/current_condition/current_condition.dart';
import 'package:weathery/features/home/domain/usecases/weather_usecase.dart';

part 'current_condition_state.dart';
part 'current_condition_cubit.freezed.dart';

@injectable
class CurrentConditionCubit extends Cubit<CurrentConditionState> {
  CurrentConditionCubit(this._usecase)
      : super(
          const CurrentConditionState.initial(),
        );

  final WeatherUsecase _usecase;

  Future<void> requestCurrentCondition({
    required String apiKey,
    required String locationKey,
  }) async {
    emit(const CurrentConditionState.loading());
    final result = await _usecase.requestCurrentCondition(
      apiKey: apiKey,
      locationKey: locationKey,
    );
    result.fold(
      (error) => emit(
        CurrentConditionState.error(error.message),
      ),
      (currentCondition) => emit(
        CurrentConditionState.loaded(currentCondition),
      ),
    );
  }
}
