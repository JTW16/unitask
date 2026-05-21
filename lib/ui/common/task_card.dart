import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';

@AppThemePreview(group: 'Items', name: 'TaskCard')
Widget preview() {
  return TaskCard(
    checked: false,
    title: 'Flutter 개발',
    date: DateTime.now(),
    category: Container(width: 30, height: 15, color: Colors.blue),
  );
}

class TaskCard extends StatelessWidget {
  final bool checked;
  final String title;
  final DateTime date;
  final VoidCallback? onSelected;
  final Function(bool? value)? onCheckde;
  final Widget category;

  const TaskCard({
    super.key,
    required this.checked,
    required this.title,
    required this.date,
    this.onSelected,
    this.onCheckde,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              category,
              Checkbox(onChanged: onCheckde, value: checked),
            ],
          ),
          Text(title),
          Row(
            spacing: 5,
            children: [
              Icon(
                LucideIcons.calendar,
                // 아이콘 색상 설정
                // <= D-3 : 빨
                // <= D-7 : 주
                //  > D-7 : 검
              ),
              Text(
                '', // Datetime 사용, intl 라이브러리 사용해서 타임포멧
              ),
            ],
          ),
        ],
      ),
    );
  }
}
