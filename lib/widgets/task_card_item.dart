import 'package:flutter/material.dart';

class TaskCardItem extends StatefulWidget {
  final String title;
  final String timeText;
  final String priorityText;
  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTapTile;

  const TaskCardItem({
    super.key,
    required this.title,
    required this.timeText,
    required this.priorityText,
    this.onChanged,
    this.onTapTile,
  });

  @override
  State<TaskCardItem> createState() => _TaskCardItemState();
}

class _TaskCardItemState extends State<TaskCardItem> {
  bool isDone = false;

  void _toggleDone() {
    setState(() {
      isDone = !isDone;
    });
    widget.onChanged?.call(isDone);
  }

  // Function untuk mendapatkan warna background tag sesuai prioritas
  Color _getPriorityBgColor(String priority) {
    if (isDone) return const Color(0xFFF1F5F9); // Warna netral saat task selesai

    switch (priority.toLowerCase()) {
      case 'urgent':
        return const Color(0xFFFAF5FF); // Background ungu muda
      case 'high':
        return const Color(0xFFFEF2F2); // Background merah muda
      case 'medium':
        return const Color(0xFFFEFCE8); // Background kuning muda
      default:
        return const Color(0xFFF0F9FF); // Background biru muda (fallback)
    }
  }

  // Function untuk mendapatkan warna teks/kontras tag sesuai prioritas
  Color _getPriorityTextColor(String priority) {
    if (isDone) return const Color(0xFF94A3B8); // Warna teks abu-abu saat selesai

    switch (priority.toLowerCase()) {
      case 'urgent':
        return const Color(0xFF9333EA); // Teks ungu
      case 'high':
        return const Color(0xFFEF4444); // Teks merah
      case 'medium':
        return const Color(0xFFEAB308); // Teks kuning/amber
      default:
        return const Color(0xFF0284C7); // Teks biru (fallback)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE2E8F0).withValues(alpha: 0.7),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                // Checkbox interaktif
                GestureDetector(
                  onTap: _toggleDone,
                  behavior: HitTestBehavior.opaque,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 4,
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDone
                            ? const Color(0xFF94A3B8)
                            : Colors.transparent,
                        border: isDone
                            ? null
                            : Border.all(
                                color: const Color(0xFFCBD5E1),
                                width: 2,
                              ),
                      ),
                      child: isDone
                          ? const Icon(
                              Icons.check,
                              size: 16,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                // Area Informasi Task
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: isDone
                              ? const Color(0xFF94A3B8)
                              : const Color(0xFF1E293B),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          decorationColor: const Color(0xFF94A3B8),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            widget.timeText,
                            style: TextStyle(
                              color: isDone
                                  ? const Color(0xFFCBD5E1)
                                  : const Color(0xFF94A3B8),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.circle_rounded,
                            color: Color(0xFFCBD5E1),
                            size: 6,
                          ),
                          const SizedBox(width: 8),

                          // Tag Priority Dinamis
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: _getPriorityBgColor(widget.priorityText),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              widget.priorityText,
                              style: TextStyle(
                                color: _getPriorityTextColor(widget.priorityText),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Tombol Panah Detail
          GestureDetector(
            onTap: widget.onTapTile,
            child: Container(
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFCBD5E1),
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}