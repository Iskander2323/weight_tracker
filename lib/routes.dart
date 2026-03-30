import 'package:go_router/go_router.dart';
import 'package:weight_tracker/ui/all_records_page/ui/all_records_page.dart';
import 'package:weight_tracker/ui/home_page/home_page.dart';

enum AppRouteNames {
  Home,
  AllRecords;

  String get name => toString().split('.').last;
}

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'all_records',
          name: AppRouteNames.AllRecords.name,
          builder: (context, state) => AllRecordsPage(),
        ),
      ],
    ),
  ],
);
