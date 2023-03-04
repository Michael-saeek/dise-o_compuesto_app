import 'package:flutter/material.dart';
import 'dart:ui';

class CustomMenuButtom extends StatelessWidget {
  final String name;
  final Color color;
  final IconData icon;

  const CustomMenuButtom({
    super.key,
    required this.name,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(style: TextStyle(fontSize: 15, color: color), name),
      ],
    );
    return _BackgroundBlurCard(child: column);
  }
}

class _BackgroundBlurCard extends StatelessWidget {
  const _BackgroundBlurCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 5),
          child: Container(
            //
            alignment: Alignment.center,
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
