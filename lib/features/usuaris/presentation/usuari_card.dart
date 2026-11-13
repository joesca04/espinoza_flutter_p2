import 'package:flutter/material.dart';
import '../domain/usuaris.dart';

// Widget que dibuixa un usuari
class UsuariCard extends StatelessWidget {
  const UsuariCard({super.key, required this.usuari});

  final Usuaris usuari;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          //al hacer click
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Has seleccionat: ${usuari.nom}')),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                usuari.nom,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(usuari.email),
            ],
          ),
        ),
      ),
    );
  }
}