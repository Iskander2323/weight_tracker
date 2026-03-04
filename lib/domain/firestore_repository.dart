import 'package:weight_tracker/data/api/firebase_api.dart';

class FirestoreRepository {
  final FirebaseApi _firebaseApi = FirebaseApi();

  Future<bool> addWeightRecord(weightRecord) async {
    try {
       final isSuccess = await _firebaseApi.addWeightRecord(weightRecord);
       return isSuccess;
    }catch (e) {
      rethrow;
    }
  }
  
}