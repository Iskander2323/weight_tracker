import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final FirestoreRepository _firestoreRepository;
  HomePageBloc({required FirestoreRepository firestoreRepository})
      : _firestoreRepository = firestoreRepository,
        super(const HomePageState.initial()) {
    on<HomePageEvent>((event, emit) async {
      await event.when(
          started: () async {
            log("HomePageBloc started");
            emit(HomePageState.initial());
            emit(HomePageState.loaded());
          },
          addWeightRecord: (weightRecord) async => await _addWeightRecord(weightRecord, emit),
      );
    });
  }

  Future<void> _addWeightRecord(WeightRecordModel weightRecord, Emitter<HomePageState> emit) async {
    try {
      emit(const HomePageState.loading());
      await _firestoreRepository.addWeightRecord(weightRecord);
      
      emit(HomePageState.success(
        message: 'Салмақ сәтті қосылды!',
      ));
    } catch (e) {

      emit(HomePageState.failure(
        errorMessage: e.toString(),
      ));
    }
  }
}
