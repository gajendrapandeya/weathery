part of 'current_condition_cubit.dart';

@freezed
class CurrentConditionState with _$CurrentConditionState {
  const factory CurrentConditionState.initial() = _Initial;
  const factory CurrentConditionState.loading() = _Loading;
  const factory CurrentConditionState.loaded(List<CurrentCondition> location) =
      _Loaded;
  const factory CurrentConditionState.error(String message) = _Error;
}
