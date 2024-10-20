# Flutter Animation Demo App

This Flutter app demonstrates a simple play/pause animated icon that changes its state when tapped. The animation is controlled using an `AnimationController`, providing a smooth transition between the play and pause states.

## Features

- Play/pause animated icon
- Tap the icon to toggle between states
- Smooth animation using `AnimationController`

## Preview
<img src="https://github.com/user-attachments/assets/8d165d95-2b82-4eb0-8b71-679f60de0a94" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">

## Code Snippet

Here is the code for the `HomePage` widget:

```dart
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
            onTap: _iconTapped,
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
```

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---
