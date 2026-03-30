import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';

part 'all_records_event.dart';
part 'all_records_state.dart';
part 'all_records_bloc.freezed.dart';

class AllRecordsBloc extends Bloc<AllRecordsEvent, AllRecordsState> {
  final FirestoreRepository _firestoreRepository;
  AllRecordsBloc({required FirestoreRepository firestoreRepository})
    : _firestoreRepository = firestoreRepository,
      super(_Initial()) {
    on<AllRecordsEvent>((event, emit) async {
      await event.when(started: () {});
    });
  }
}
