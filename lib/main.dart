
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/mispantallas/inicio.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';
import 'package:myapp/mispantallas/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xffe63946);
    const Color secondaryColor = Color(0xff457b9d);
    const Color accentColor = Color(0xffa8dadc);
    const Color backgroundColor = Color(0xfff1faee);
    const Color textColor = Color(0xff1d3557);

    final TextTheme appTextTheme = TextTheme(
      displayLarge: GoogleFonts.roboto(fontSize: 57, fontWeight: FontWeight.bold, color: textColor),
      titleLarge: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w500, color: textColor),
      bodyMedium: GoogleFonts.roboto(fontSize: 14, color: textColor),
      headlineMedium: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          secondary: secondaryColor,
          tertiary: accentColor,
          surface: backgroundColor,
          onSurface: textColor,
        ),
        textTheme: appTextTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: accentColor,
          foregroundColor: textColor,
          elevation: 0,
          titleTextStyle: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        cardTheme: CardThemeData(
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          unselectedItemColor: textColor.withOpacity(0.6),
          showUnselectedLabels: true,
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}
