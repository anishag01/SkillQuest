import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:skill_quest/screens/entry_screen.dart';
import 'package:skill_quest/screens/login_screen.dart';
import 'package:skill_quest/utils/style_constants.dart';
import 'package:skill_quest/utilities/style_constants.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreen createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {


  @override
  Widget build(BuildContext context) {
    final onboardPages = [
      Container(
          color: Colors.pinkAccent,
          child: FirstScreen()
      ),
      Container(
        color: Colors.deepPurpleAccent,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0
            ),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        child: skipButton(context
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0
                        ),
                        child: Image(
                          image: AssetImage('assets/onboarding/teaching.png'
                          ),
                        ),
                      ),
                      SizedBox(height: 50,
                      ),
                      Center(
                        child: Padding(
                            padding: const EdgeInsets.all(16.0
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                    'Learn new skills', style: StyleConstants.onboardingText
                                ),
                                Text('from the comfort of your home',
                                    style: StyleConstants.onboardingText
                                ),
                              ],
                            )
                        ),
                      ),
                    ]
                )
            )
        ),
      ),
      Container(
        color: Colors.greenAccent,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0
            ),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        child: skipButton(context
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0
                        ),
                        child: Image(
                          image: AssetImage('assets/onboarding/points.png'
                          ),
                        ),
                      ),
                      SizedBox(height: 50,
                      ),
                      Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0
                            ),
                            child: Text('Collect points for learning skills',
                                style: StyleConstants.onboardingText
                            ),
                          ),
                        ),
                      ),
                    ]
                )
            )
        ),
      ),
      Container(
        color: Colors.blueAccent,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0
            ),
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        child: skipButton(context
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0
                        ),
                        child: Image(
                          image: AssetImage('assets/onboarding/compete.png'
                          ),
                        ),
                      ),
                      SizedBox(height: 50,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0
                          ),
                          child: Column(
                              children: <Widget>[
                                Text('Compete with your friends',
                                    style: StyleConstants.onboardingText
                                ),
                                Text(
                                    'in friendly competitions', style: StyleConstants.onboardingText
                                ),
                              ]
                          ),
                        ),
                      ),
                    ]
                )
            )
        ),
      ),
      Container(
        child: FinalScreen(),
      )
    ];
    return Scaffold(
        body: LiquidSwipe(
          pages: onboardPages,
          fullTransitionValue: 400,
          enableLoop: true,
          enableSlideIcon: false,
          //positionSlideIcon: 0.8,
          waveType: WaveType.liquidReveal,
        )
    );

  }

  Widget skipButton(BuildContext context){
    return FlatButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => EntryScreen())),
      child: Text(
        'Skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }

}


class FinalScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AvatarGlow(
              endRadius: 150,
              duration: Duration(seconds: 2),
              glowColor: Colors.white24,
              repeat: true,
              repeatPauseDuration: Duration(seconds: 1),
              startDelay: Duration(seconds: 1),
              child: Material(
                  elevation: 25.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: FlutterLogo(
                      size: 100.0,
                    ),
                    radius: 100.0,
                  )
              ),
            ),
            //SizedBox(height: 100,),
            Center(
              child: Text(
                'Start your skill quest today',
                style: StyleConstants.onboardingText,
              ),
            ),
            SizedBox(height: 30,
            ),
            IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_forward_ios
                ),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => EntryScreen()
                  )
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}


class FirstScreen extends StatefulWidget {
  final String title;

  FirstScreen({Key key, this.title}) : super(key: key);

  @override
  _FirstScreen createState() => _FirstScreen();
}


class _FirstScreen extends State<FirstScreen> {
  // Whether the green box should be visible
  bool _buttonVisible = true;
  bool _textVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Stack(
            children: <Widget>[
              Center(
                  // The green box must be a child of the AnimatedOpacity widget.
                  child: Container(
                    child: Text(
                      'Welcome to Skill Quest',
                      style: StyleConstants.onboardingText,),
                  ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
