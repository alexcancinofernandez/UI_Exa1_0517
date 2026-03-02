
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
            tooltip: 'Notifications',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back, Alex!',
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Ready to crush your goals today?',
              style: theme.textTheme.titleMedium?.copyWith(color: theme.textTheme.titleMedium?.color?.withOpacity(0.7)),
            ),
            const SizedBox(height: 24),
            _buildSuggestionCard(theme),
            const SizedBox(height: 24),
            _buildChatSection(theme),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/pantalla2');
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

  Widget _buildSuggestionCard(ThemeData theme) {
    return Card(
        color: theme.colorScheme.secondary.withOpacity(0.1),
        elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(Icons.lightbulb_outline, color: theme.colorScheme.secondary, size: 30),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Event Suggestion', style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: theme.colorScheme.secondary)),
                  const SizedBox(height: 4),
                  Text('Join the 30-day yoga challenge!', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.secondary)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Chat',
          style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                _buildChatMessage(theme, 'Coach', 'Ready for our session?'),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Send a message...',
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send, color: theme.colorScheme.primary),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildChatMessage(ThemeData theme, String sender, String message) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: theme.colorScheme.tertiary,
          child: Text(sender.substring(0, 1), style: TextStyle(color: theme.colorScheme.onSurface)),
        ),
        const SizedBox(width: 12),
        Text(message, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}

