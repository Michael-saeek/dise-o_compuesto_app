import 'package:designs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const CustomListTitle(),
        Table(
          children: const [
            TableRow(children: [
              CustomMenuButtom(
                name: 'General',
                color: Colors.blue,
                icon: Icons.menu,
              ),
              CustomMenuButtom(
                name: 'Transport',
                color: Colors.pink,
                icon: Icons.emoji_transportation,
              ),
            ]),
            TableRow(children: [
              CustomMenuButtom(
                name: 'Shopping',
                color: Colors.green,
                icon: Icons.shopping_bag,
              ),
              CustomMenuButtom(
                name: 'Paper',
                color: Colors.orange,
                icon: Icons.pause_presentation_rounded,
              ),
            ]),
            TableRow(children: [
              CustomMenuButtom(
                name: 'Cloud',
                color: Colors.blueAccent,
                icon: Icons.cloud,
              ),
              CustomMenuButtom(
                name: 'Grocery',
                color: Colors.deepPurple,
                icon: Icons.shopping_basket,
              ),
            ]),
            TableRow(children: [
              CustomMenuButtom(
                name: 'Cloud',
                color: Colors.blueAccent,
                icon: Icons.cloud,
              ),
              CustomMenuButtom(
                name: 'Grocery',
                color: Colors.deepPurple,
                icon: Icons.shopping_basket,
              ),
            ]),
            TableRow(children: [
              CustomMenuButtom(
                name: 'Cloud',
                color: Colors.blueAccent,
                icon: Icons.cloud,
              ),
              CustomMenuButtom(
                name: 'Grocery',
                color: Colors.deepPurple,
                icon: Icons.shopping_basket,
              ),
            ]),
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
