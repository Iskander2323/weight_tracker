import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:weight_tracker/common/custom_primary_button.dart';
import 'package:weight_tracker/data/model/weight_record_model.dart';
import 'package:weight_tracker/routes.dart';
import 'package:weight_tracker/ui/home_page/bloc/home_page_bloc.dart';
import 'package:weight_tracker/ui/extensions/hidekeyboard_context_extension.dart';
import 'package:weight_tracker/ui/home_page/widget/select_date_widget.dart';
import 'package:weight_tracker/ui/home_page/widget/week_calendar_widget.dart';

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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  WeekCalendarWidget(),
                  Text(
                    'Салмақты енгізіңіз (кг)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IntrinsicWidth(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 20.0,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 100,
                            maxWidth: 200,
                          ),
                          child: TextFormField(
                            controller: _weightController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: "69.5",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 6.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 6.0,
                                ),
                              ),
                              hintStyle: TextStyle(
                                fontSize: 30.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: SelectDateWidget(
                          title: 'Бүгін',
                          defaultDay: DateTime.now(),
                          selectedDay: state.maybeWhen(
                            loaded: (selectedDay) {
                              return selectedDay;
                            },
                            orElse: () => DateTime.now(),
                          ),
                          onTap: () {
                            log('Test Today');
                            context.read<HomePageBloc>().add(
                              HomePageEvent.changeSelectedDay(
                                selectedDay: DateTime.now(),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: SelectDateWidget(
                          title: 'Кеше',
                          defaultDay: DateTime.now().subtract(
                            Duration(days: 1),
                          ),
                          selectedDay: state.maybeWhen(
                            loaded: (selectedDay) {
                              return selectedDay;
                            },
                            orElse: () => DateTime.now(),
                          ),
                          onTap: () {
                            log('Test Yesterday');
                            context.read<HomePageBloc>().add(
                              HomePageEvent.changeSelectedDay(
                                selectedDay: DateTime.now().subtract(
                                  Duration(days: 1),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: SelectDateWidget(
                          onTap: () {
                            log('Test Select');
                          },
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.goNamed(AppRouteNames.AllRecords.name);
                    },
                    child: Text('All Records'),
                  ),
                  const Spacer(),
                  CustomPrimaryButton(
                    title: 'Add Weight',
                    onTap: () {
                      final weight =
                          double.tryParse(_weightController.text) ?? 0.0;
                      final date = state.maybeWhen(
                        orElse: () => DateTime.now(),
                        loaded: (selectedDay) => selectedDay,
                      );
                      final weightRecord = WeightRecordModel(
                        weight: weight,
                        date: date ?? DateTime.now(),
                      );
                      context.read<HomePageBloc>().add(
                        HomePageEvent.addWeightRecord(
                          weightRecord: weightRecord,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ).hideKeyboardOnTap(context);
      },
    );
  }
}
