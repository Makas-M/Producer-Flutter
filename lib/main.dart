import 'package:flutter/material.dart';
import 'package:producer/PrimeiraPagina.dart';
import 'package:get/get.dart';
import 'HomeScreen.dart';
import 'PlaylistScreen.dart';
import 'SongScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Producer',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              )),
      home: const MyHomePage(title: 'Producer'),
      getPages: [
        GetPage(name: '/', page: () => const PrimeiraPagina()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
