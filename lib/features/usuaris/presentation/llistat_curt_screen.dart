import 'package:flutter/material.dart';
import '../domain/usuaris.dart';
import 'usuari_card.dart';

class LlistatCurtScreen extends StatelessWidget {
  const LlistatCurtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //usuaris
    final List<Usuaris> usuaris = [
      Usuaris(nom: 'juan', email: 'juan@gmail.com'),
      Usuaris(nom: 'pablo', email: 'pablo@gmail.com'),
      Usuaris(nom: 'carlos', email: 'carlos@gmail.com'),
      Usuaris(nom: 'helena', email: 'helena@gmail.com'),
      Usuaris(nom: 'josue', email: 'josue@gmail.com'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Llistat curt'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // ListView para pocos usuarios
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          UsuariCard(usuari: usuaris[0]),
          UsuariCard(usuari: usuaris[1]),
          UsuariCard(usuari: usuaris[2]),
          UsuariCard(usuari: usuaris[3]),
          UsuariCard(usuari: usuaris[4]),
        ],
      ),
    );
  }
}