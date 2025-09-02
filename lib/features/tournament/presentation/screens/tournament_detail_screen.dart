import 'package:fe_test_ayo/core/widgets/faq_widget.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_cubit.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TournamentDetailScreen extends StatefulWidget {
  final String tournamentId;

  const TournamentDetailScreen({super.key, required this.tournamentId});

  @override
  State<TournamentDetailScreen> createState() => _TournamentDetailScreenState();
}

class _TournamentDetailScreenState extends State<TournamentDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TournamentCubit>().fetchTournamentById(widget.tournamentId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TournamentCubit, TournamentState>(
      builder: (context, state) {
        String appBarTitle = 'Tournament Detail';
        try {
          final tournament = state.tournaments.firstWhere(
            (t) => t.id == widget.tournamentId,
          );
          appBarTitle = tournament.name;
        } catch (e) {
          appBarTitle = 'Tournament Detail';
        }

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 14),
                  onPressed: () => context.go('/'),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          appBarTitle,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.375,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_drop_down_circle, size: 16),
                    ],
                  ),
                ),
                // FAQ Widget
                const FaqWidget(),
              ],
            ),
            backgroundColor: const Color(0xFF7A5AF8),
            foregroundColor: Colors.white,
          ),
          body: BlocBuilder<TournamentCubit, TournamentState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xFF7A5AF8)),
                );
              }
              final tournament = state.tournaments.firstWhere(
                (t) => t.id == widget.tournamentId,
                orElse: () => throw Exception('Tournament not found'),
              );
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${tournament.name}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'ID: ${tournament.id}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
