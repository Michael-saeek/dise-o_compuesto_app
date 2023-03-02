import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.2,
                  0.8
                ],
                colors: [
                  Color.fromRGBO(55, 53, 102, 1),
                  Color.fromRGBO(37, 38, 59, 1)
                ]),
          ),
        ),
        _CustomFigureGeometry(),
      ],
    );
  }
}

class _CustomFigureGeometry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -20,
      child: Transform.rotate(
        angle: -pi / 5,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(210, 100, 166, 1),
                  Color.fromRGBO(184, 60, 128, 1)
                ]),
            borderRadius: BorderRadius.circular(80),
          ),
          width: 360,
          height: 360,
        ),
      ),
    );
  }
}
