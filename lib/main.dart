import 'package:flutter/material.dart';
import 'login_page.dart'; // استدعاء صفحة تسجيل الدخول

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق تعليم جسم الإنسان',
      theme: ThemeData(
        primarySwatch: Colors.teal, // استخدام لون موحد
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(
          primary: Colors.teal, // اللون الرئيسي
          onPrimary: Colors.white, // لون النص على الأزرار
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontSize: 18, color: Colors.black), // بدلاً من bodyText2
          titleLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold), // بدلاً من headline6
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .teal, // لون الأزرار (تم استبدال primary بـ backgroundColor)
            foregroundColor: Colors
                .white, // لون النص على الأزرار (onPrimary أصبح foregroundColor)
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      home: LoginPage(), // الانتقال إلى صفحة تسجيل الدخول
    );
  }
}
