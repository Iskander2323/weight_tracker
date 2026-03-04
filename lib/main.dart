import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weight_tracker/app.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';
import 'package:weight_tracker/firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

final firestoreRepository = FirestoreRepository();

  runApp(App(firestoreRepository: firestoreRepository));
}

