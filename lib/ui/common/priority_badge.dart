import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:unitask/core/enum/priority.dart';

@AppThemePreview(group: 'Badge', name: '우선순위')
class PriorityBadge extends StatelessWidget {
  const PriorityBadge({super.key, required this.priority});
  final Priority priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: priority.secondary,
        borderRadius: .circular(50),
      ),
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(LucideIcons.dot, color: priority.primary, size: 20),
          Text(
            priority.title,
            style: TextStyle(
              color: priority.primary,
              fontSize: 12,
              fontWeight: .w700,
            ),
          ),
        ],
      ),
    );
  }
}
