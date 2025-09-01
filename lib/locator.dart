import 'package:fe_test_ayo/features/community/data/data_sources/local_community_data_source.dart';
import 'package:fe_test_ayo/features/community/data/repositories/community_repository.dart';
import 'package:fe_test_ayo/features/community/domain/repositories/community_repository.dart';
import 'package:fe_test_ayo/features/community/presentation/cubit/community_cubit.dart';
import 'package:fe_test_ayo/features/tournament/data/data_sources/local_tournament_data_source.dart';
import 'package:fe_test_ayo/features/tournament/data/repositories/tournament_repository.dart';
import 'package:fe_test_ayo/features/tournament/domain/repositories/tournament_repository.dart';
import 'package:fe_test_ayo/features/tournament/presentation/cubit/tournament_cubit.dart';
import 'package:fe_test_ayo/features/user/data/data_sources/local_user_data_source.dart';
import 'package:fe_test_ayo/features/user/data/repositories/user_repository.dart';
import 'package:fe_test_ayo/features/user/domain/repositories/user_repository.dart';
import 'package:fe_test_ayo/features/user/presentation/cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  setupDataSource();
  setupRepository();
  setupCubit();
}

void setupDataSource() {
  getIt.registerSingleton(LocalUserDataSource());
  getIt.registerSingleton(LocalCommunityDataSource());
  getIt.registerSingleton(LocalTournamentDataSource());
}

void setupRepository() {
  getIt.registerSingleton<IUserRepository>(
    UserRepository(getIt<LocalUserDataSource>()),
  );
  getIt.registerSingleton<ICommunityRepository>(
    CommunityRepository(getIt<LocalCommunityDataSource>()),
  );
  getIt.registerSingleton<ITournamentRepository>(
    TournamentRepository(getIt<LocalTournamentDataSource>()),
  );
}

void setupCubit() {
  getIt.registerLazySingleton(() => UserCubit(getIt<IUserRepository>()));
  getIt.registerLazySingleton(() => CommunityCubit(getIt<ICommunityRepository>()));
  getIt.registerLazySingleton(() => TournamentCubit(getIt<ITournamentRepository>()));

}
