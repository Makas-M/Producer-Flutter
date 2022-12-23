import 'package:flutter/material.dart';

class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
    title: 'Instrumental 1',
    description: 'trap beat',
    url: 'assets/music/'
    ),

  ];
}
