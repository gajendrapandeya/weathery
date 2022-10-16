import 'package:flutter/material.dart';
import 'package:weathery/features/home/presentation/widgets/current_location_widget.dart';
import 'package:weathery/features/home/presentation/widgets/home_screen_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeScreenAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: const [
            SizedBox(
              height: 12.0,
            ),
            CurrentLocationWidget()
          ],
        ),
      ),
    );
  }
}
