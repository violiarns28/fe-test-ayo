import 'package:fe_test_ayo/features/tournament/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);
