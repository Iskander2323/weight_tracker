part of 'all_records_bloc.dart';

@freezed
class AllRecordsEvent with _$AllRecordsEvent {
  const factory AllRecordsEvent.started() = _Started;
}