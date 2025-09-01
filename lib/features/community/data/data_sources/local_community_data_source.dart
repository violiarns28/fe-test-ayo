import 'package:fe_test_ayo/features/community/data/models/community_model.dart';

class LocalCommunityDataSource {
  final List<CommunityModel> _communities = [
    CommunityModel(
      id: '1',
      name: 'Bleu House',
      region: 'Surabaya',
      image: 'https://avatar.iran.liara.run/public/1',
    ),
    CommunityModel(
      id: '2',
      name: 'Green Valley',
      region: 'Jakarta',
      image: 'https://avatar.iran.liara.run/public/2',
    ),
    CommunityModel(
      id: '3',
      name: 'Sunset Heights',
      region: 'Bandung',
      image: 'https://avatar.iran.liara.run/public/3',
    ),
    CommunityModel(
      id: '4',
      name: 'Ocean Breeze',
      region: 'Bali',
      image: 'https://avatar.iran.liara.run/public/4',
    ),
    CommunityModel(
      id: '5',
      name: 'Golden Field',
      region: 'Yogyakarta',
      image: 'https://avatar.iran.liara.run/public/5',
    ),
    CommunityModel(
      id: '6',
      name: 'Skyline Tower',
      region: 'Medan',
      image: 'https://avatar.iran.liara.run/public/6',
    ),
    CommunityModel(
      id: '7',
      name: 'River Park',
      region: 'Malang',
      image: 'https://avatar.iran.liara.run/public/7',
    ),
    CommunityModel(
      id: '8',
      name: 'Crystal Lake',
      region: 'Semarang',
      image: 'https://avatar.iran.liara.run/public/8',
    ),
    CommunityModel(
      id: '9',
      name: 'Palm Residence',
      region: 'Makassar',
      image: 'https://avatar.iran.liara.run/public/9',
    ),
    CommunityModel(
      id: '10',
      name: 'Harmony Hills',
      region: 'Balikpapan',
      image: 'https://avatar.iran.liara.run/public/10',
    ),
  ];
  List<CommunityModel> getCommunities() {
    return _communities;
  }

  CommunityModel getCommunityById(String id) {
    return _communities.firstWhere((community) => community.id == id);
  }
}
