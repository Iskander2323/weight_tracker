import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_tracker/ui/all_records_page/bloc/all_records_bloc.dart';

class AllRecordsPageBody extends StatefulWidget {
  const AllRecordsPageBody({super.key});

  @override
  State<AllRecordsPageBody> createState() => _AllRecordsPageBodyState();
}

class _AllRecordsPageBodyState extends State<AllRecordsPageBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllRecordsBloc, AllRecordsState>(
      builder: (context, state) {
        return Scaffold(body: Center(child: Text('All Records Page')));
      },
    );
  }
}
