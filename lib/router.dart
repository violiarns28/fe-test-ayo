import 'package:fe_test_ayo/features/tournament/presentation/screens/home_screen.dart';
import 'package:fe_test_ayo/features/tournament/presentation/screens/tournament_detail_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/tournament/:id',
      builder: (context, state) {
        final tournamentId = state.pathParameters['id']!;
        return TournamentDetailScreen(tournamentId: tournamentId);
      },
    ),
  ],
);
