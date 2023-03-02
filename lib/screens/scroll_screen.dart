import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* Stacks permite colocar widgets uno encima del otro*/
        body: PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: const [
        Page1(),
        Page2(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [BackgroundImage(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 50),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
                style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                ' 11°'),
            const Text(
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                ' THURSDAY '),
            Expanded(child: Container()),
            const Icon(
                color: Colors.white,
                size: 100,
                Icons.keyboard_arrow_down_outlined),
          ],
        ));
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.blue,
      child: const Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/splash_screen.jpg'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 31, 12, 81),
      alignment: AlignmentDirectional.center,
      child: const Text(
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          'Welcome Michael'),
    );
  }
}
