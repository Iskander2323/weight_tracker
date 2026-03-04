part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.loaded() = _Loaded;
  const factory HomePageState.success({
    required String message,
  }) = _Success;
  const factory HomePageState.failure({
    required String errorMessage,
    List<WeightRecordModel>? weightRecords, // Қатедан кейін де деректерді сақтау
  }) = _Failure;
}
