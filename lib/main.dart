import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/projects_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  final List<IconData> icons = [
    Icons.home_rounded,
    Icons.grid_view_rounded,
    Icons.calendar_today_rounded,
    Icons.description_rounded,
    Icons.person_outline_rounded,
  ];

  final List<Widget> pages = [
    const HomeScreen(),
    const ProjectsScreen(),
    const Center(
      child: Text('Halaman Kalender', style: TextStyle(fontSize: 20)),
    ),
    const Center(
      child: Text('Halaman Dokumen', style: TextStyle(fontSize: 20)),
    ),
    const Center(child: Text('Halaman Profil', style: TextStyle(fontSize: 20))),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFF4F7FC),
                    Color(0xFFF1F4FA),
                    Color(0xFFEDF2FA),
                  ],
                ),
              ),
            ),

            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: pages,
            ),

            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9999),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(icons.length, (index) {
                    bool isActive = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? const Color(0xFF191C21)
                              : Colors.transparent,
                        ),
                        child: Icon(
                          icons[index],
                          color: isActive
                              ? Colors.white
                              : const Color(0xFF6E7C8C),
                          size: 26,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
