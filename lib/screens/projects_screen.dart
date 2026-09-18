import 'package:flutter/material.dart';

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
                      borderRadius: BorderRadius.circular(9999)
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        )
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
                fontWeight: FontWeight.w500
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
                  onTap: () {

                  },
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
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
