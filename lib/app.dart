import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';
import 'package:weight_tracker/routes.dart';

class App extends StatelessWidget {
  const App({super.key, required this.firestoreRepository});

  final FirestoreRepository firestoreRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create:  (context) => firestoreRepository),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: routes,
      ),
    );
  }
}