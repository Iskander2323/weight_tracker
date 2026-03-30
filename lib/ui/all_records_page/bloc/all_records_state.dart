part of 'all_records_bloc.dart';

@freezed
class AllRecordsState with _$AllRecordsState {
  const factory AllRecordsState.initial() = _Initial;
  const factory AllRecordsState.loaded({
    @Default([]) List<WeightRecordModel> allRecords,
  }) = _Loaded;
}
