import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final String time;
  final String category;
  final Color color;
  final Color categoryBgColor;
  final Color categoryTextColor;
  final bool isDone;
  final Widget? trailing;
  final VoidCallback? onToggle;

  const TaskItemWidget({
    super.key,
    required this.title,
    required this.time,
    required this.category,
    required this.color,
    required this.categoryBgColor,
    required this.categoryTextColor,
    this.isDone = false,
    this.trailing,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDone ? Colors.white.withValues(alpha: 0.6) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 5,
                color: isDone ? const Color(0xFFCBD5E1) : color,
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: onToggle, // Callback untuk aksi klik
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 200,
                    ), // Animasi transisi centang
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isDone
                          ? const Color(0xFF4ADE80)
                          : Colors.transparent,
                      border: isDone
                          ? null
                          : Border.all(
                              color: const Color(0xFFCBD5E1),
                              width: 2,
                            ),
                    ),
                    child: isDone
                        ? const Icon(Icons.check, size: 16, color: Colors.white)
                        : null,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: isDone
                              ? const Color(0xFF94A3B8)
                              : const Color(0xFF1E293B),
                          decoration: isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          if (!isDone) ...[
                            const Icon(
                              Icons.access_time_rounded,
                              size: 14,
                              color: Color(0xFF94A3B8),
                            ),
                            const SizedBox(width: 4),
                          ],
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: isDone
                                  ? const Color(0xFFCBD5E1)
                                  : const Color(0xFF94A3B8),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: isDone
                                  ? const Color(0xFFF1F5F9)
                                  : categoryBgColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              category,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: isDone
                                    ? const Color(0xFF94A3B8)
                                    : categoryTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (trailing != null)
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: trailing,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
