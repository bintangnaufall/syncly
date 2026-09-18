import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget{
  final String category;
  final String title;
  final String date;
  final List<Color> gradientColors;
  final Color categoryTextColor;
  final Color titleTextColor;
  final Color dateTextColor;
  final Color lineColor;
  final Color borderColor;


  const TaskCardWidget({
    super.key,
    required this.category,
    required this.title,
    required this.date,
    required this.gradientColors,
    required this.categoryTextColor,
    this.titleTextColor = const Color(0xFF1E293B),
    required this.dateTextColor,
    required this.lineColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor.withValues(alpha: 0.6), width: 1),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),

        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              category.toUpperCase(),
              style: TextStyle(
                color: categoryTextColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF1E293B),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              height: 1.2
            )
          ),
          const SizedBox(height: 12),
          Divider(
            color: lineColor.withValues(alpha: 0.5),
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 14,
                color: dateTextColor,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  date,
                  style: TextStyle(
                    color: dateTextColor.withValues(alpha: 0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
}