import 'package:app_note_flutter/core/constants.dart';
import 'package:app_note_flutter/screens/home/home_screens.dart';
import 'package:app_note_flutter/screens/on_boarding_screen/on_boarding_screens.dart';
import 'package:app_note_flutter/widgets/tab_bar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: background,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.grey[200],
              titleTextStyle: TextStyle(
                color: primary,
                fontSize: 32,
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: HomeScreens(),
    );
  }
}
