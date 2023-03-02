import 'package:designs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const CustomListTitle(),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 2,
          children: const [
            CustomMenuButtom(),
            CustomMenuButtom(),
          ],
        ),
      ]),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: const ListTile(
        textColor: Colors.white,
        title: Text(
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            'Classify transaction'),
        subtitle: Text(
            maxLines: 2,
            'Classify this transaction into a particular category'),
      ),
    );
  }
}
