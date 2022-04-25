import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

enum TileType { landscape, transport }

class MapScreen extends HookConsumerWidget {
  const MapScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tileType = useState(TileType.landscape);
    final currentPosition = ref.watch(currentLocationProvider);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.my_location),
              backgroundColor: Constants.mainColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Wrap(direction: Axis.vertical, spacing: 10.0, children: [
              FloatingActionButton(
                backgroundColor: tileType.value == TileType.transport
                    ? const Color.fromARGB(255, 90, 116, 160)
                    : Constants.mainColor,
                child: const Icon(Icons.directions_bus_filled),
                onPressed: () => tileType.value = TileType.transport,
              ),
              FloatingActionButton(
                backgroundColor: tileType.value == TileType.landscape
                    ? const Color.fromARGB(255, 90, 116, 160)
                    : Constants.mainColor,
                child: const Icon(Icons.landscape),
                onPressed: () => tileType.value = TileType.landscape,
              ),
            ]),
          ),
        ]),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: Constants.brezovicaLatLng,
          zoom: 16.0,
          onMapCreated: (_) => ref.refresh(currentLocationProvider),
        ),
        layers: [
          TileLayerOptions(
            urlTemplate:
                '${Constants.mapBaseUrl}${tileType.value.name}${Constants.mapZXYpng}?apikey=${dotenv.env["THUNDERFOREST_API_KEY"]!}',
            subdomains: ['a', 'b', 'c'],
            overrideTilesWhenUrlChanges: true,
            //retinaMode: true,
            attributionBuilder: (_) {
              return const Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: currentPosition.when(
                    data: (position) {
                      print(position);
                      return LatLng(position!.latitude, position.longitude);
                    },
                    error: (_, __) => Constants.brezovicaLatLng,
                    loading: () => Constants.brezovicaLatLng),
                builder: (ctx) => const FlutterLogo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final currentLocationProvider = FutureProvider<Position?>((_) async {
  final isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
  if (isLocationServiceEnabled) {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever ||
        permission == LocationPermission.unableToDetermine) {
      final requestPermission = await Geolocator.requestPermission();
      if (requestPermission == LocationPermission.always ||
          requestPermission == LocationPermission.whileInUse) {
        return await Geolocator.getCurrentPosition(forceAndroidLocationManager: true);
      } else {
        throw const PermissionDeniedException("");
      }
    } else {
      return await Geolocator.getCurrentPosition(forceAndroidLocationManager: true);
    }
  } else {
    throw const LocationServiceDisabledException();
  }
});
