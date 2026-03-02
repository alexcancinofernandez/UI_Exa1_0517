
import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainer Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8.0),
        children: [
          _buildMessageTile(context,
              'https://raw.githubusercontent.com/alexcancinofernandez/mis_imagenes_de_flutter_0517/refs/heads/main/sara.jpg', 'Coach Sarah', 'Great job on your workout today!', '11:30 AM', 1),
          _buildMessageTile(context,
              'https://raw.githubusercontent.com/alexcancinofernandez/mis_imagenes_de_flutter_0517/refs/heads/main/Training%20Partne.jpg', 'Training Partner', 'Are we still on for 5 PM?', '10:00 AM', 0),
          _buildMessageTile(context,
              'https://raw.githubusercontent.com/alexcancinofernandez/mis_imagenes_de_flutter_0517/refs/heads/main/inicio1.jpg', 'Gym Group Chat', 'Who is joining the challenge?', 'Yesterday', 3),
          _buildMessageTile(context,
              'https://raw.githubusercontent.com/alexcancinofernandez/mis_imagenes_de_flutter_0517/refs/heads/main/nutricionista.jpg', 'Nutritionist', 'Check out this new recipe.', 'Yesterday', 0),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/pantalla2');
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

  Widget _buildMessageTile(
      BuildContext context, String imageUrl, String name, String message, String time, int unreadCount) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200, width: 1)
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 25,
        ),
        title: Text(name, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        subtitle: Text(message, style: theme.textTheme.bodyMedium?.copyWith(color: theme.textTheme.bodyMedium?.color?.withAlpha(178))),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time, style: theme.textTheme.bodySmall),
            const SizedBox(height: 4),
            if (unreadCount > 0)
              CircleAvatar(
                radius: 10,
                backgroundColor: theme.colorScheme.primary,
                child: Text(
                  unreadCount.toString(),
                  style: theme.textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
