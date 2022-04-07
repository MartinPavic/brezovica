import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends HookConsumerWidget {
  const MapScreen({Key? key}) : super(key: key);

  final String apiKey = "1de228133ad447069c6a06dafd9ffc73";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(tileUrlProvider(apiKey));
    return Scaffold(
      floatingActionButton: Wrap(direction: Axis.vertical, children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: FloatingActionButton(
            backgroundColor: Constants.mainColor,
            child: const Icon(Icons.directions_bus_filled),
            onPressed: () {
              ref.read(tileUrlProvider(apiKey).notifier).state =
                  "https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=$apiKey";
            },
          ),
        ),
        FloatingActionButton(
          backgroundColor: Constants.mainColor,
          child: const Icon(Icons.landscape),
          onPressed: () {
            ref.read(tileUrlProvider(apiKey).notifier).state =
                "https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=$apiKey";
          },
        ),
      ]),
      body: FlutterMap(
        options: MapOptions(
            center: LatLng(45.726798, 15.912234),
            zoom: 16.0,
            onMapCreated: (ct) => print("map created")),
        layers: [
          TileLayerOptions(
            urlTemplate: url,
            subdomains: ['a', 'b', 'c'],
            overrideTilesWhenUrlChanges: true,
            retinaMode: true,
            attributionBuilder: (_) {
              return const Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(51.5, -0.09),
                builder: (ctx) => const FlutterLogo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final tileUrlProvider = StateProvider.family(
    (_, apiKey) => "https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=$apiKey");
