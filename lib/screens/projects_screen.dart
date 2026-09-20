import 'package:flutter/material.dart';
import 'package:syncly/widgets/project_card_widget.dart';

class ProjectsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 180,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  Text(
                    'Keep your work organized.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF94A3B8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.03),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(
                          Icons.notifications_none_rounded,
                          color: Color(0xFF334155),
                          size: 24,
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF43F5E),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                    decoration: BoxDecoration(
                      color: Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add_rounded, color: Colors.white, size: 16),
                        const SizedBox(width: 6),
                        Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(9999),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 15,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              style: const TextStyle(
                color: Color(0xFF0F172A),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: 'Search projects...',
                hintStyle: const TextStyle(
                  color: Color(0xFF94A3B8),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 14, right: 11),
                  child: Icon(
                    Icons.search_rounded,
                    size: 24,
                    color: Color(0xFF94A3B8),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(right: 16, left: 11),
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Color(0xFF94A3B8),
                      size: 24,
                    ),
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 0,
                  minWidth: 0,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFEEF2FF),
                  Color(0xFFF5E8FE),
                  Color(0xFFFCE7F3),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'YOUR PROJECTS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF64748B),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9999),
                      ),
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          color: Color(0xFF312E81),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.65),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '4',
                              style: TextStyle(
                                color: Color(0xFF1E293B),
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Active',
                              style: TextStyle(
                                color: Color(0xFF64748B),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.65),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                color: Color(0xFF1E293B),
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Tasks Left',
                              style: TextStyle(
                                color: Color(0xFF64748B),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.65),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '68%',
                              style: TextStyle(
                                color: Color(0xFF4F46E5),
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Overall',
                              style: TextStyle(
                                color: Color(0xFF64748B),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sprint Progress',
                      style: TextStyle(
                        color: Color(0xFF475569),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '68% Completed',
                      style: TextStyle(
                        color: Color(0xFF475569),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(9999),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    width: double.infinity,
                    height: 10,
                    color: Colors.white.withValues(alpha: 1),
                    child: LayoutBuilder(
                      builder: (context, contraints) {
                        return Stack(
                          children: [
                            Container(
                              width: contraints.maxWidth * 0.68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9999),
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF6366F1),
                                    Color(0xFFA855F7),
                                    Color(0xFFEC4899),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFF0F172A),
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(
                      color: Color(0xFF000000).withValues(alpha: 0.8),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'All (4)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(
                      color: Color(0xFFFFFFFF).withValues(alpha: 0.12),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Active (3)',
                    style: TextStyle(
                      color: Color(0xFF475569),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(
                      color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Completed',
                    style: TextStyle(
                      color: Color(0xFF475569),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(
                      color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Archived',
                    style: TextStyle(
                      color: Color(0xFF475569),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          ProjectCardWidget(
            title: 'Attendance App',
            tag: 'Development',
            completedTasks: 8,
            totalTasks: 11,
            progressPercentage: 0.72,
            dueDate: 'Sep 16',
            tagColor: Color(0xFF065F46),
            tagBackgroundColor: Color(0xFFD1FAE5),
            strokeTagBackgroundColor: Color(0xFFA7F3D0),
            backgroundColor: [
              Color(0xFFEEFDF5),
              Color(0xFFE6F9EF),
              Color(0xFFD5F5E3)
            ],
            strokeBackgroundColor: Color(0xFF86EFAC).withValues(alpha: 0.4),
            icon: Icons.folder_outlined,
            iconColor: Color(0xFF047857),
            iconBackgroundColor: Color(0xFF34D399).withValues(alpha: 0.2),
            strokeIconBackgroundColor: Color(0xFF34D399).withValues(alpha: 0.4),
            progressBarColor: Color(0xFF10B981),
            progressBarBackgroundColor: Color(0xFFA7F3D0).withValues(alpha: 0.5),
          ),
          ProjectCardWidget(
            title: 'Thesis',
            tag: 'Personal',
            completedTasks: 5,
            totalTasks: 12,
            progressPercentage: 0.45,
            dueDate: 'Sep 18',
            tagColor: Color(0xFF6B21A8),
            tagBackgroundColor: Color(0xFFF3E8FF),
            strokeTagBackgroundColor: Color(0xFFE9D5FF),
            backgroundColor: [
              Color(0xFFF5F3FF),
              Color(0xFFEDE9FE),
              Color(0xFFE0E7FF)
            ],
            strokeBackgroundColor: Color(0xFFC4B5FD).withValues(alpha: 0.4),
            icon: Icons.menu_book_rounded,
            iconColor: Color(0xFF7E22CE),
            iconBackgroundColor: Color(0xFF8B5CF6).withValues(alpha: 0.2),
            strokeIconBackgroundColor: Color(0xFF8B5CF6).withValues(alpha: 0.4),
            progressBarColor: Color(0xFFA855F7),
            progressBarBackgroundColor: Color(0xFFE9D5FF).withValues(alpha: 0.5),
          ),
          ProjectCardWidget(
            title: 'Kelurahan Website',
            tag: 'Development',
            completedTasks: 9,
            totalTasks: 15,
            progressPercentage: 0.60,
            dueDate: 'Sep 20',
            tagColor: Color(0xFF1E40AF),
            tagBackgroundColor: Color(0xFFDBEAFE),
            strokeTagBackgroundColor: Color(0xFFBFDBFE),
            backgroundColor: [
              Color(0xFFEFF6FF),
              Color(0xFFE0F2FE),
              Color(0xFFDBEAFE)
            ],
            strokeBackgroundColor: Color(0xFF93C5FD).withValues(alpha: 0.4),
            icon: Icons.language_rounded,
            iconColor: Color(0xFF1D4ED8),
            iconBackgroundColor: Color(0xFF3B82F6).withValues(alpha: 0.2),
            strokeIconBackgroundColor: Color(0xFF3B82F6).withValues(alpha: 0.4),
            progressBarColor: Color(0xFF3B82F6),
            progressBarBackgroundColor: Color(0xFFBFDBFE).withValues(alpha: 0.5),
          ),
          ProjectCardWidget(
            title: 'YBAD Website',
            tag: 'Development',
            completedTasks: 3,
            totalTasks: 10,
            progressPercentage: 0.30,
            dueDate: 'Sep 24',
            tagColor: Color(0xFF9F1239),
            tagBackgroundColor: Color(0xFFFFE4E6),
            strokeTagBackgroundColor: Color(0xFFFECDD3),
            backgroundColor: [
              Color(0xFFFFF1F2),
              Color(0xFFFFE4E6),
              Color(0xFFFED7AA)
            ],
            strokeBackgroundColor: Color(0xFFFDA4AF).withValues(alpha: 0.4),
            icon: Icons.desktop_windows_outlined,
            iconColor: Color(0xFFBE123C),
            iconBackgroundColor: Color(0xFFFB7185).withValues(alpha: 0.2),
            strokeIconBackgroundColor: Color(0xFFFB7185).withValues(alpha: 0.4),
            progressBarColor: Color(0xFFF43F5E),
            progressBarBackgroundColor: Color(0xFFFECDD3).withValues(alpha: 0.5),
          ),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: Color(0xFFE2E8F0),
                style: BorderStyle.solid,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.auto_awesome_outlined,
                  color: Color(0xFF475569),
                  size: 20,
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Need another space? Create a project in seconds.',
                    style: TextStyle(
                      color: Color(0xFF64748B),
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(width: 1),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    '+ Add',
                    style: TextStyle(
                      color: Color(0xFF4F46E5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
