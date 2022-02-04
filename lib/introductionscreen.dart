import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenPage extends StatefulWidget {
  const IntroductionScreenPage({Key? key}) : super(key: key);

  @override
  _IntroductionScreenPageState createState() => _IntroductionScreenPageState();
}

class _IntroductionScreenPageState extends State<IntroductionScreenPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/images/introductionscreen/img1.jpg"),
          title: "Testing title Image 1",
          body: "This is body text",
          footer: const Text("This is footer text")),
      PageViewModel(
          image: Image.asset("assets/images/introductionscreen/img2.jpg"),
          title: "Testing title Image 2",
          body: "This is body text",
          footer: const Text("This is footer text")),
      PageViewModel(
          image: Image.asset("assets/images/introductionscreen/img3.png"),
          title: "Testing title Image 3",
          body: "This is body text",
          footer: const Text("This is footer text")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: const Text("Done"),
        onDone: () {},
        pages: getPages(),
        next: Container(),
      ),
    );
  }
}
