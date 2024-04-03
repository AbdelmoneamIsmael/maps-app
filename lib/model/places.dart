import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacesModel {
  final String name;
  final int id;
  final LatLng position;

  PlacesModel({required this.name, required this.id, required this.position});
}

List<PlacesModel> placesList = [
  PlacesModel(
    id: 1,
    name: "mdafn",
    position: const LatLng(30.013870051855815, 31.35703453435702),
  ),
  PlacesModel(
    id: 3,
    name: "msged",
    position: const LatLng(30.0172135529254, 31.38087023459053),
  ),
  PlacesModel(
    id: 2,
    name: "fondoq",
    position: const LatLng(30.016135520500725, 31.374681252622253),
  )
];
