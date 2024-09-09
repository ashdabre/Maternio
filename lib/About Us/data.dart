import 'package:url_launcher/url_launcher.dart';

class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Ashal Dabre',
      iconImage: 'assets/ashalpp.png',
      description:
          "\u2022 Name:- Ashal Ashok Dabre \n\u2022  Class:- Se COMPS-B\n\u2022 Roll No:- 10404\n\u2022 College:- Fr. Conceicao Rodrigues College of Engineering, Bandra(W), ",
      images: []),
  PlanetInfo(2,
      name: 'Snowy Fernandez',
      iconImage: 'assets/snowypp.png',
      description:
          "\u2022 Name:- Snowy Ashok Fernandes\n\u2022 Class:- Se COMPS-B\n\u2022 Roll No:- 10408\n\u2022 College:- Fr. Conceicao Rodrigues College of Engineering, Bandra(W), ",
      images: []),
  PlanetInfo(3,
      name: 'Avin Dabre',
      iconImage: 'assets/avinpp.png',
      description:
          "\u2022 Name:- Avin Ashok Dabre \n\u2022  Class:- Se COMPS-B\n\u2022 Roll No:- 10405\n\u2022 College:- Fr. Conceicao Rodrigues College of Engineering, Bandra(W), ",
      images: []),
];
