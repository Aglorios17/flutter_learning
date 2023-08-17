import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key:key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  // controller to keep tack of page
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.blue
              ),
              Container(
                color: Colors.yellow
              ),
              Container(
                color: Colors.green,
              )
            ],
        ),
        // dot indicators
        Container(
          alignment: const Alignment(0, 0.75),
          child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
      ],)
    );
  }
}