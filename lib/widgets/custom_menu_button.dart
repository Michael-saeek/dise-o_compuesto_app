import 'package:flutter/material.dart';

class CustomMenuButtom extends StatelessWidget {
  const CustomMenuButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(224, 220, 220, 0.411),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: const Color.fromARGB(104, 42, 231, 77),
                borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.menu),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('General')
        ],
      ),
    );
  }
}
