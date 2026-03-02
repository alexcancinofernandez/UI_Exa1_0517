
import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: theme.colorScheme.primary, // Override for this screen
        foregroundColor: Colors.white, // To make title and icons white
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://raw.githubusercontent.com/alexcancinofernandez/mis_imagenes_de_flutter_0517/refs/heads/main/pantalla2.jpg'),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'Alexander Cancino Fernandez',
                style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: Text(
                '6-i',
                style: theme.textTheme.titleMedium?.copyWith(color: theme.textTheme.titleMedium?.color?.withOpacity(0.7)),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming Workout',
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.fitness_center, color: theme.colorScheme.secondary),
                        const SizedBox(width: 8),
                        Text('Full Body HIIT, 7 PM', style: theme.textTheme.bodyMedium),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Join Session'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'About Me',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
                'Passionate about functional training and helping others achieve their fitness goals. Let\'s get stronger together!',
                style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/pantalla3');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
