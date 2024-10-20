import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // Create the animation controller
  late AnimationController _animatedController;

  // Initialize the animation controller
  @override
  void initState() {
    super.initState();
    _animatedController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    );
  }

  // Method for when user taps icon
  bool iconPlaying = false;
  void _iconTapped() {
    if (iconPlaying == false) {
      _animatedController.forward();
      iconPlaying = true;
    } else {
      _animatedController.reverse();
      iconPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
            onTap: () {

            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _animatedController,
              size: 120,
            ),
          )
      ),
    );
  }
}
