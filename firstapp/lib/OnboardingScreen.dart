import 'package:firstapp/intro/intro_page_1.dart';
import 'package:firstapp/intro/intro_page_2.dart';
import 'package:firstapp/intro/intro_page_3.dart';
import 'package:firstapp/home_page.dart';
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

  // keep track last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3()
            ],
        ),
        // dot indicators
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // skip
              GestureDetector(
                onTap: () => {
                  _controller.jumpToPage(2)
                },
                child: const Text('skip'),
              ),

              // dot indicator
              SmoothPageIndicator(controller: _controller, count: 3),

              // next or done
              onLastPage 
              ? GestureDetector(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const HomePage();
                    }))
                  },
                  child: const Text('done'),
                ) 
              : GestureDetector(
                  onTap: () => {
                    _controller.nextPage(
                      duration: const Duration(milliseconds:500),
                      curve: Curves.easeIn
                      )
                  },
                  child: const Text('next'),
                ),
            ],
          ),
          ),
      ],)
    );
  }
}