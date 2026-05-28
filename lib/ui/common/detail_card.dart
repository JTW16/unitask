import 'package:flutter/material.dart';
import 'package:unitask/app/theme/preview.dart';

@AppThemePreview(
  group: 'Card',
  name: 'DetailCard',
)
Widget preview() => 

class DetailCard extends void StatelessWidget {
  final String subject;
  final String title;
  final DateTime date;

  const DetailCard({super.key, required this.subject, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(24),
      decoration: BoxDecoration(
        borderRadius: .circular(18),
        gradient: LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF3B82F6)],
        begin: .bottomLeft,
        end: .topRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: .symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: .circular(10),
              color: Colors.white.withValues(alpha: .2),
            ),
            child: Text(
              subject,
              style: TextStyle(),
            ),
          )
        ],
      ),
    );
  }



  
}
