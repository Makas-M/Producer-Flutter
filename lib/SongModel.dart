

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
    description: 'Kizomba',
    url: 'assets/music/K1.mp3',
    coverUrl: 'assets/images/cover.jpg',
    ),
    Song(
    title: 'Instrumental 2',
    description: 'Kizomba',
    url: 'assets/music/K2.mp3',
    coverUrl: 'assets/images/cover.jpg',
    ),
    Song(
    title: 'Instrumental 3',
    description: 'Kizomba',
    url: 'assets/music/K3.mp3',
    coverUrl: 'assets/images/cover.jpg',
    ),
  ];
}
