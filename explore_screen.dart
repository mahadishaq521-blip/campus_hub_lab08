import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.event_outlined),
              title: Text('Upcoming events'),
              subtitle: Text('Workshop, seminar, and society activities'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.library_books_outlined),
              title: Text('Learning resources'),
              subtitle: Text('Notes and project ideas'),
            ),
          ),
        ],
      ),
    );
  }
}
