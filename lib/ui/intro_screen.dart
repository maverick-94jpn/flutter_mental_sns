import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:new_mentalhealthapp/styles.dart';
import 'bnb_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: <PageViewModel>[
          PageViewModel(
            title: 'Title of first page',
            body:
                'Here you can write the description of the page, to explain someting...',
            image: Center(
              child:
                  Image.network('https://domaine.com/image.png', height: 175.0),
            ),
          ),
          PageViewModel(
            title: 'Title of first page',
            body:
                'Here you can write the description of the page, to explain someting...',
            image: Center(
              child:
                  Image.network('https://domaine.com/image.png', height: 175.0),
            ),
          ),
          PageViewModel(
            title: 'Title of first page',
            body:
                'Here you can write the description of the page, to explain someting...',
            footer: RaisedButton(
              child: const Text('はじめる'),
              onPressed: () {
                print('tap');
                Navigator.of(context).push<dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) {
                      return BottomNavigationBarScreen();
                    },
                  ),
                );
              },
            ),
            image: Center(
              child:
                  Image.network('https://domaine.com/image.png', height: 175.0),
            ),
          )
        ],
        globalBackgroundColor: Styles.mainBlue,
        onDone: () {},
        showSkipButton: true,
        next: const Text('次へ'),
        skip: const Text('スキップ'),
        dotsDecorator: const DotsDecorator(activeColor: Colors.white),
        done: const Text('done'),
      ),
    );
  }
}
