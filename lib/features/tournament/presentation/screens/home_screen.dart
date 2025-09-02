import 'package:fe_test_ayo/core/widgets/filter_dropdown_widget.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_cubit.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TournamentCubit>().fetchTournaments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A5AF8),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const FilterDropdownWidget(),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<TournamentCubit, TournamentState>(
                builder: (context, state) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child:
                        state.tournaments.isEmpty
                            ? const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'No tournaments available',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )
                            : ListView.separated(
                              padding: const EdgeInsets.all(8.0),
                              itemCount: state.tournaments.length,
                              itemBuilder: (context, index) {
                                final tournament = state.tournaments[index];
                                return ListTile(
                                  title: Text(
                                    tournament.name,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  trailing: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  tileColor: Colors.grey[50],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  onTap: () {
                                    context.go('/tournament/${tournament.id}');
                                  },
                                );
                              },
                              separatorBuilder:
                                  (context, index) => const Divider(),
                            ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
