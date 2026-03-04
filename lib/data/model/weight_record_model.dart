import 'package:cloud_firestore/cloud_firestore.dart';

class WeightRecordModel {
  final double weight;
  final DateTime date;
  final DateTime createdAt;

  WeightRecordModel({
    required this.weight,
    required this.date,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'weight': weight,
      'date': Timestamp.fromDate(date),
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }
}