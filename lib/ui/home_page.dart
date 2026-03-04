import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';
import 'package:weight_tracker/ui/bloc/home_page_bloc.dart';
import 'package:weight_tracker/ui/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(firestoreRepository: context.read<FirestoreRepository>())
        ..add(const HomePageEvent.started()),
      child: const HomePageBody(),
    );
  }
}
