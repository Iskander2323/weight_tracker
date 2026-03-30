import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/domain/firestore_repository.dart';
import 'package:weight_tracker/ui/all_records_page/bloc/all_records_bloc.dart';
import 'package:weight_tracker/ui/all_records_page/ui/all_records_page_body.dart';

class AllRecordsPage extends StatelessWidget {
  const AllRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllRecordsBloc(
        firestoreRepository: context.read<FirestoreRepository>(),
      )..add(AllRecordsEvent.started()),
      child: AllRecordsPageBody(),
    );
  }
}
