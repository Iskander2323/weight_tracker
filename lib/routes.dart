import 'package:go_router/go_router.dart';
import 'package:weight_tracker/ui/home_page.dart';

final routes = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) {
    return const HomePage();
  }),
]);