import 'package:fe_test_ayo/features/community/presentation/cubit/community_cubit.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_cubit.dart';
import 'package:fe_test_ayo/features/user/presentation/cubit/user_cubit.dart';
import 'package:fe_test_ayo/locator.dart';
import 'package:fe_test_ayo/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UserCubit>()),
        BlocProvider(create: (context) => getIt<CommunityCubit>()),
        BlocProvider(create: (context) => getIt<TournamentCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FE Test - Ayo',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
