import 'package:flutter/material.dart';
import '../domain/usuaris.dart';
import 'usuari_card.dart';

class LlistatLlargScreen extends StatelessWidget {
  const LlistatLlargScreen({super.key});

  @override
  Widget build(BuildContext context) {


    final List<Usuaris> usuaris = List.generate(
      100,
      (index) => Usuaris(
        //expresion para generar 100 usuarios ejemplos, del 1 al 100
        nom: 'Usuari ${index + 1}',
        email: 'usuari${index + 1}@gmail.com',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Llistat llarg'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // ListView.builder mas elementos y solo se crean los usuarios que se muestran
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: usuaris.length,
        itemBuilder: (BuildContext context, int index) {
          return UsuariCard(usuari: usuaris[index]);
        },
      ),
    );
  }
}