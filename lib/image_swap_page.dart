import 'package:flutter/material.dart';

class ImageSwapPage extends StatefulWidget {
  const ImageSwapPage({super.key});

  @override
  _ImageSwapPageState createState() => _ImageSwapPageState();
}

class _ImageSwapPageState extends State<ImageSwapPage> {
  final List<String> _images = [
    'images/mas.png.jpg',
    'images/skelton.png.jpg',
    'images/mas2.webp',
    'images/mas3.webp',
    'images/skelton2.webp',
  ];

  final List<String> _captions = [
    'Muscle Structure',
    'Skeleton Structure',
    'Muscle Structure',
    'Muscle Structure',
    'Skeleton Structure',
  ];

  int _currentImageIndex = 0;

  void _swapImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تعرف على جسم الإنسان'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade900],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _swapImage,
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Image.asset(
                    _images[_currentImageIndex],
                    key: ValueKey<int>(_currentImageIndex),
                    width: 300,
                    height: 500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _captions[_currentImageIndex],
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      // استبدال headline6 بـ titleLarge
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
