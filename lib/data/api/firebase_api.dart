import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';

class FirebaseApi {
   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

   Future<bool> addWeightRecord(WeightRecordModel weightRecord) async {
    try {
      final result = await _firestore.collection('weight_records').add(weightRecord.toMap());
      log('Weight record added successfully with ID: ${result.id}');
      return true;
    } on FirebaseException catch (e) {
      log('Failed to add weight record: ${e.message}');
      throw Exception('Failed to add weight record: ${e.message}');
    } on Exception catch (e) {
      log('An unexpected error occurred: ${e.toString()}');
      throw Exception('An unexpected error occurred: ${e.toString()}');
    }
  }

}