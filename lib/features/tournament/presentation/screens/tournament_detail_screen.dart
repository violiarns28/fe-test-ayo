import 'package:fe_test_ayo/core/widgets/card.widget.dart';
import 'package:fe_test_ayo/core/widgets/faq_widget.dart';
import 'package:fe_test_ayo/core/widgets/filter_dropdown_widget.dart';
import 'package:fe_test_ayo/core/widgets/periode_filter_widget.dart';
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
  String selectedPeriod = 'All Time';

  @override
  void initState() {
    super.initState();
    context.read<TournamentCubit>().fetchTournamentById(widget.tournamentId);
  }

  void _showPeriodBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return PeriodFilterBottomSheet(
          selectedPeriod: selectedPeriod,
          onPeriodSelected: (period) {
            setState(() {
              selectedPeriod = period;
            });
          },
        );
      },
    );
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
          backgroundColor: Color(0xFF7A5AF8),
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
                  child: GestureDetector(
                    onTap: _showPeriodBottomSheet,
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
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(child: FilterDropdownWidget()),
                        const SizedBox(width: 16),
                        Expanded(child: FilterDropdownWidget()),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CardWidget(),
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
