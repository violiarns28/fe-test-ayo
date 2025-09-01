import 'package:fe_test_ayo/features/tournament/data/models/tournament_model.dart';
import 'package:fe_test_ayo/features/tournament/domain/entities/tournament_entity.dart';

class LocalTournamentDataSource<T> {
  final List<TournamentModel<T>> _tournaments = [
    TournamentModel(
      id: 'c7379b7a-712c-4b02-bf76-2f45063e5d24',
      name: 'Spring Championship',
      sportType: SportType.tennis,
      startDate: DateTime(2023, 3, 20),
      endDate: DateTime(2023, 3, 25),
      participants: [],
    ),
    TournamentModel(
      id: 'a1f4b5e2-543f-40c3-9f4d-8b2a9f3e5c12',
      name: 'Summer Cup',
      sportType: SportType.badminton,
      startDate: DateTime(2023, 6, 10),
      endDate: DateTime(2023, 6, 20),
      participants: [],
    ),
    TournamentModel(
      id: 'b3d7f6a1-6c9e-4d52-a9f2-3d92b4a2c678',
      name: 'Autumn Invitational',
      sportType: SportType.padel,
      startDate: DateTime(2023, 9, 5),
      endDate: DateTime(2023, 9, 12),
      participants: [],
    ),
    TournamentModel(
      id: 'd4f8c9b3-1234-4cde-8b21-6e5f9c1a4e7f',
      name: 'Winter Classic',
      sportType: SportType.miniSoccer,
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 8),
      participants: [],
    ),
    TournamentModel(
      id: 'e6a9d7b2-3456-4d3f-8e45-9a2c3f1d7e5a',
      name: 'City Open',
      sportType: SportType.squash,
      startDate: DateTime(2023, 4, 15),
      endDate: DateTime(2023, 4, 22),
      participants: [],
    ),
    TournamentModel(
      id: 'f7b8e2c3-7890-4a12-9d34-6f7b1a2e3d9c',
      name: 'National League Finals',
      sportType: SportType.pingPong,
      startDate: DateTime(2023, 7, 1),
      endDate: DateTime(2023, 7, 10),
      participants: [],
    ),
    TournamentModel(
      id: 'g8c9d4e5-9876-4b21-8c43-2a9f1d4c7e8b',
      name: 'All-Star Tournament',
      sportType: SportType.pickleBall,
      startDate: DateTime(2023, 8, 12),
      endDate: DateTime(2023, 8, 18),
      participants: [],
    ),
    TournamentModel(
      id: 'h9d1e5f6-1122-4c33-9d56-7b8c2a3d1e9f',
      name: 'Champions Trophy',
      sportType: SportType.tennis,
      startDate: DateTime(2023, 10, 5),
      endDate: DateTime(2023, 10, 15),
      participants: [],
    ),
    TournamentModel(
      id: 'i0e2f6g7-3344-4d44-8e67-9c1d2e3f4a5b',
      name: 'World Padel Cup',
      sportType: SportType.padel,
      startDate: DateTime(2023, 11, 1),
      endDate: DateTime(2023, 11, 10),
      participants: [],
    ),
    TournamentModel(
      id: 'j1f3g7h8-5566-4e55-9f78-0d2e3f4a5b6c',
      name: 'Badminton Grand Slam',
      sportType: SportType.badminton,
      startDate: DateTime(2023, 5, 25),
      endDate: DateTime(2023, 5, 30),
      participants: [],
    ),
  ];

  List<TournamentModel<T>> getAllTournaments() {
    return _tournaments;
  }

  TournamentModel<T>? getTournamentById(String id) {
    try {
      return _tournaments.firstWhere((tournament) => tournament.id == id);
    } catch (e) {
      return null;
    }
  }
}
