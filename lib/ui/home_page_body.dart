import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:weight_tracker/common/custom_primary_button.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';
import 'package:weight_tracker/ui/bloc/home_page_bloc.dart';
import 'package:weight_tracker/ui/extensions/date_time_extension.dart';
import 'package:weight_tracker/ui/extensions/hidekeyboard_context_extension.dart';
import 'package:weight_tracker/ui/widget/select_date_widget.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
 final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (message) {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.success(message: message),
            );
            _weightController.clear();
            context.hideKeyboard();
          },
          failure: (errorMessage, weightRecords) {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.error(message: errorMessage),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 60.0, left: 60.0, right: 60.0),
                child: TextFormField(
                  controller: _weightController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Салмақ кг",
                    hintStyle: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold)
                  ),
                  
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //    SelectDateWidget(
              //     title: 'Today ${DateTime.now().standartDate}',
              //     onTap: () {
              //       log('Test');
              //     },
              //    ),
              //       SelectDateWidget(
              //     title: 'Yesterday ${DateTime.now().subtract(const Duration(days: 1)).standartDate}',
              //     onTap: () {
              //       log('Test');
              //     },
              //    ),
              //       SelectDateWidget(
              //     title: 'Select date',
              //     onTap: () {
              //       log('Test');
              //     },
              //    )
              // ],),
               const Spacer(),
              CustomPrimaryButton(title: 'Add Weight', onTap: (){
                final weight = double.tryParse(_weightController.text) ?? 0.0;
                final date = DateTime.now();
                final weightRecord = WeightRecordModel(weight: weight, date: date);
                context.read<HomePageBloc>().add(HomePageEvent.addWeightRecord(weightRecord: weightRecord));
              }),
            ],
          ),
        ),
       ),
      ).hideKeyboardOnTap(context);
     }
    );
  }
}