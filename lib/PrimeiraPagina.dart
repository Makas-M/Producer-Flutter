import 'package:flutter/material.dart';

class PrimeiraPagina extends StatefulWidget {
  const PrimeiraPagina({super.key});

  @override
  State<PrimeiraPagina> createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beat-Store'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  const [
          Text('Tela com lista de musicas recentes'),
        ]
      ),
    );
  }
}
