import 'package:flutter/material.dart';
import 'package:shopping_app/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart_provider.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.cream,
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.forest,
            primary: AppColors.forest,
            secondary: AppColors.clay,
            tertiary: AppColors.oxblood,
            surface: AppColors.cream,
            onPrimary: AppColors.cream,
            onSecondary: AppColors.cream,
            onSurface: AppColors.text,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.forest,
            foregroundColor: AppColors.cream,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontFamily: 'Lato',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.cream,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            filled: true,
            fillColor: Color(0xFFF4E9D6),
            prefixIconColor: AppColors.forest,
          ),
          chipTheme: ChipThemeData(
            backgroundColor: const Color(0xFFF4E9D6),
            selectedColor: AppColors.forest,
            labelStyle: const TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.w600,
            ),
            side: const BorderSide(color: AppColors.clay),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.oxblood,
              foregroundColor: AppColors.cream,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.forest,
            selectedItemColor: AppColors.cream,
            unselectedItemColor: Color(0xFFCDBEA5),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            titleSmall: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            bodyLarge: TextStyle(color: AppColors.text),
            bodyMedium: TextStyle(color: AppColors.text),
          ),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
