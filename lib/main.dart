import 'package:flutter/material.dart';

void main() => runApp(const AppSteam());

class AppSteam extends StatelessWidget {
  const AppSteam({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam',
      home: Juego(),
    );
  }
}

class Juego extends StatelessWidget {
  const Juego({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego Mulato'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        actions: const [
          Icon(Icons.bedroom_child),
          SizedBox(width: 10), // Espacio entre iconos
          Icon(Icons.flight),
          SizedBox(width: 15),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              decoration: BoxDecoration(
                // Degradado azul oscuro
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF1A237E), // Azul profundo
                    Color(0xFF0D47A1), // Azul oscuro
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar con imagen de Kojima
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white24, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT36VHh-mjL_Rc8IL60D77dMDPL_fNhosHuag&s',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Título
                  const Text(
                    'Aaron Mulato',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Subtítulo
                  Text(
                    'Desarrollador',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}