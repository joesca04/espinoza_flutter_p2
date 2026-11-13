import 'package:flutter/material.dart';
import '../../usuaris/presentation/llistat_curt_screen.dart';
import '../../usuaris/presentation/llistat_llarg_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla principal'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Missatge de hola
              const Text(
                'Hola',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 32),

              // Botn llistat curt
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LlistatCurtScreen(),
                    ),
                  );
                },
                child: const Text('Llistat curt'),
              ),
              const SizedBox(height: 16),

              // Boton llistat llarg
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LlistatLlargScreen(),
                    ),
                  );
                },
                child: const Text('Llistat llarg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}