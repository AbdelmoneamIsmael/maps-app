import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraPosition intialCameraPosition;
  late GoogleMapController googleMapController;
  @override
  void initState() {
    intialCameraPosition = CameraPosition(
      target: const LatLng(30.027390314091964, 31.21664924121461),
      zoom: getZoomLevel(lvl: 2),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        googleMapController = controller;
        initMapStyle();
      },
      cameraTargetBounds: CameraTargetBounds(LatLngBounds(
          southwest: const LatLng(30.071075567465776, 30.733937458769528),
          northeast: const LatLng(30.11385059432607, 31.703480896625127))),
      initialCameraPosition: intialCameraPosition,
    );
  }

  void initMapStyle() async {
    var intialMapStyle = await DefaultAssetBundle.of(context)
        .loadString("assets/map_style/map_style_one.json");
    googleMapController.setMapStyle(intialMapStyle);
  }

  double getZoomLevel({int? lvl = 1}) {
    //map  0-3
    if (lvl == 0 || lvl == null) {
      return 2;
    }
    //country level 4-6
    else if (lvl == 1) {
      return 5;
    }
    //city level  10-12
    else if (lvl == 2) {
      return 11;
    }
    //street  level 13-17
    else if (lvl == 3) {
      return 15;
    }
    //building  level 18-20
    else {
      return 19;
    }
  }
}
