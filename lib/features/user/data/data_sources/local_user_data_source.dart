import 'package:fe_test_ayo/features/user/data/models/user_model.dart';

class LocalUserDataSource {
  final List<UserModel> _users = [
    UserModel(
      id: 'c7379b7a-712c-4b02-bf76-2f45063e5d24',
      name: 'John Doe',
      username: 'john',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '1114cdac-44bf-4856-89cf-11e136580e91',
      name: 'Jane Smith',
      username: 'jane',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '2226edac-55bf-4967-92ef-22e146680e21',
      name: 'Michael Johnson',
      username: 'michael',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '3337fead-66cf-4a78-a3ff-33f156780f31',
      name: 'Emily Davis',
      username: 'emily',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '4448gfbe-77df-4b89-b40f-44g166880g41',
      name: 'Daniel Wilson',
      username: 'daniel',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '5559hgcf-88ef-4c90-c51f-55h176980h51',
      name: 'Olivia Brown',
      username: 'olivia',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '6660ihdg-99ff-4da1-d62f-66i187080i61',
      name: 'William Taylor',
      username: 'william',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '7771jiei-00gf-4eb2-e73f-77j197180j71',
      name: 'Sophia Martinez',
      username: 'sophia',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '8882kjfj-11hg-4fc3-f84f-88k1a8180k81',
      name: 'James Anderson',
      username: 'james',
      image: 'https://avatar.iran.liara.run/public',
    ),
    UserModel(
      id: '9993lkgl-22ih-40d4-g95f-99l1b9180l91',
      name: 'Isabella Thomas',
      username: 'isabella',
      image: 'https://avatar.iran.liara.run/public',
    ),
  ];

  List<UserModel> getUsers() {
    return _users;
  }

  UserModel getUserById(String id) {
    return _users.firstWhere((user) => user.id == id);
  }
}
