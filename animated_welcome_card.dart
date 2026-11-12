import 'package:flutter/material.dart';

import '../../../core/app_theme.dart';

class AnimatedWelcomeCard extends StatefulWidget {
  const AnimatedWelcomeCard({super.key});

  @override
  State<AnimatedWelcomeCard> createState() => _AnimatedWelcomeCardState();
}

class _AnimatedWelcomeCardState extends State<AnimatedWelcomeCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _expanded = !_expanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        width: double.infinity,
        padding: EdgeInsets.all(_expanded ? 28 : 16),
        decoration: BoxDecoration(
          color: _expanded ? const Color(0xFF5EEAD4) : AppTheme.tint,
          borderRadius: BorderRadius.circular(_expanded ? 24 : 12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.waving_hand, size: 30),
            const SizedBox(height: 8),
            Text(_expanded ? 'Welcome to Campus Hub!' : 'Welcome back!'),
            if (_expanded) const Text('Tap again to return to compact view.'),
          ],
        ),
      ),
    );
  }
}
