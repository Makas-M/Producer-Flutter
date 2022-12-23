import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red.shade800.withOpacity(0.8),
            Colors.red.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _Appbaraux(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red.shade800,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: 'Play'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: 'Perfil'),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Find your Favorite Beat',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'search',
                      ),
                     )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Appbaraux extends StatelessWidget with PreferredSizeWidget {
  const _Appbaraux({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
              //backgroundImage: NetworkImage(),///// para colocar imagem do usuario
              ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
