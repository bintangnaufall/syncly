import 'package:flutter/material.dart';

class ProjectCardWidget extends StatelessWidget {
  final String title;
  final String tag;
  final Color tagColor;
  final Color tagBackgroundColor;
  final Color strokeTagBackgroundColor;
  final int completedTasks;
  final int totalTasks;
  final double progressPercentage;
  final String dueDate;
  final List<Color> backgroundColor;
  final Color strokeBackgroundColor;
  final Color iconBackgroundColor;
  final Color strokeIconBackgroundColor;
  final Color progressBarColor;
  final Color progressBarBackgroundColor;
  final IconData icon;
  final Color iconColor;
  final VoidCallback? onOptionsTap;

  const ProjectCardWidget({
    super.key,
    required this.title,
    required this.tag,
    required this.tagColor,
    required this.tagBackgroundColor,
    required this.strokeTagBackgroundColor,
    required this.completedTasks,
    required this.totalTasks,
    required this.progressPercentage,
    required this.dueDate,
    required this.backgroundColor,
    required this.strokeBackgroundColor,
    required this.progressBarColor,
    required this.progressBarBackgroundColor,
    required this.iconBackgroundColor,
    required this.strokeIconBackgroundColor,
    required this.icon,
    required this.iconColor,
    this.onOptionsTap,
  });

  @override
  Widget build(BuildContext context) {
    final int progressPercentText = (progressPercentage * 100).round();

    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: backgroundColor,
        ),
        border: Border.all(color: strokeBackgroundColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: strokeIconBackgroundColor,
                    width: 1,
                  ),
                ),
                child: Icon(icon, color: iconColor, size: 30),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF0F172A),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: tagBackgroundColor,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: strokeTagBackgroundColor,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tag,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: tagColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '$completedTasks/$totalTasks tasks',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF64748B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onOptionsTap,
                child: const Icon(
                  Icons.more_vert_rounded,
                  color: Color(0xFF94A3B8),
                  size: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Progress',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF475569),
                ),
              ),
              Text(
                '$progressPercentText%',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF047857),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(9999),
            child: Container(
              height: 8,
              color: progressBarBackgroundColor,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width:
                          constraints.maxWidth *
                          progressPercentage.clamp(0.0, 1.0),
                      decoration: BoxDecoration(
                        color: progressBarColor,
                        borderRadius: BorderRadius.circular(9999),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 18,
                color: progressBarColor,
              ),
              const SizedBox(width: 4),
              Text(
                'Sep 16',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF64748B),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
