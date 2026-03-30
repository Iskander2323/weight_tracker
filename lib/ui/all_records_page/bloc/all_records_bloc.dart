import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';

part 'all_records_event.dart';
part 'all_records_state.dart';
part 'all_records_bloc.freezed.dart';

class AllRecordsBloc extends Bloc<AllRecordsEvent, AllRecordsState> {
  final FirestoreRepository _firestoreRepository;
  AllRecordsBloc({required FirestoreRepository firestoreRepository})
    : _firestoreRepository = firestoreRepository,
      super(AllRecordsState.initial()) {
    on<AllRecordsEvent>((event, emit) async {
      await event.when(
        started: () async {
          log('AllRecordsBloc started', name: 'AllRecordsBloc');
          emit(AllRecordsState.initial());
          final allRecords = await _firestoreRepository.getAllWeightRecords();
          emit(AllRecordsState.loaded(allRecords: allRecords));
          for (var rec in allRecords) {
            log(
              'weight: ${rec.weight}, date: ${rec.date}, createdAt: ${rec.createdAt}',
            );
          }
        },
      );
    });
  }
}
