import 'dart:developer';

import 'package:weight_tracker/data/api/firebase_api.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';

class FirestoreRepository {
  final FirebaseApi _firebaseApi = FirebaseApi();

  Future<List<WeightRecordModel>> getAllWeightRecords() async {
    try {
      final result = await _firebaseApi.getAllWeightRecords();
      return result;
    } catch (e) {
      log(e.toString(), name: 'Firestore Repository - getAllWeightRecords');
      rethrow;
    }
  }

  Future<bool> addWeightRecord(weightRecord) async {
    try {
      final isSuccess = await _firebaseApi.addWeightRecord(weightRecord);
      return isSuccess;
    } catch (e) {
      log(e.toString(), name: 'Firestore Repository - addWeightRecord');
      rethrow;
    }
  }
}
