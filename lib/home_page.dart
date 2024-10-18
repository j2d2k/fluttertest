import 'package:flutter/material.dart';
import 'image_swap_page.dart'; // استدعاء صفحة تبديل الصور

class HomePage extends StatelessWidget {
  final String userName;

  const HomePage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مرحباً بك في عالم جسم الإنسان!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مرحباً يا صديقي، $userName!',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // استبدال headline6 بـ titleLarge
            ),
            const SizedBox(height: 20),
            Text(
              'ما رأيك أن نتعرف على جسم الإنسان وأعضائه؟',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium, // استبدال bodyText2 بـ bodyMedium
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset('images/kids_body.jpg',
                width: 300, height: 300), // صورة تفاعلية
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageSwapPage()),
                );
              },
              child: const Text('دعنا نبدأ!'),
            ),
          ],
        ),
      ),
    );
  }
}
