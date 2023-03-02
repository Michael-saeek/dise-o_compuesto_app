import 'package:designs_app/widgets/home_body_content.dart';
import 'package:designs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomButtomNavigation(),
        body: Stack(
          children: const [
            Background(),
            HomeBodyContent(),
          ],
        ));
  }
}
