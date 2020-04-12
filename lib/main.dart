import 'package:flutter/material.dart';
import 'package:skill_quest/screens/entry_screen.dart';
import 'package:skill_quest/screens/home_page.dart';
import 'package:skill_quest/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<int> skillDuration = [
    2,
    4,
    2,
    5,
    3,
    1,
    1,
    2,
    5,
    2,
    4,
    3,
    7,
    1,
    1,
    1,
    7,
    5,
    1,
    1,
    6,
    1,
    1,
    5,
    4,
    7,
    7,
    2,];
  List<String> skillUrls = [
    'https://ak7.picdn.net/shutterstock/videos/22582597/thumb/1.jpg',
    'https://www.thesprucecrafts.com/thmb/53Tl2PDkMdnR1z5jx9VkuIZ9Zd8=/2800x1867/filters:fill(auto,1)/CrochetHeart5-5baeeaeac9e77c00264228b3.jpg',
    'https://www.sessions.edu/wp-content/uploads/Bob-Ross-3.jpg',
    'https://i5.walmartimages.com/asr/6ea495ab-3e06-44ee-884d-aa4a5705ed79_1.e2ad4a6119eaad60049538b09c6c0370.jpeg',
    'https://cdn.britannica.com/08/166508-050-12D5E894/origami-crane.jpg',
    'https://4.bp.blogspot.com/-c_NsqZS2GnA/WuDiQGjY-1I/AAAAAAAAAPU/-J0vEydcRQwuc1iv7Q_r58bFyr94qmecACLcBGAs/s1600/Close-up-magic-tricks.jpg',
    'https://johnnybruscos.com/wp-content/uploads/2014/11/Pizza-Toss-IMG_1748.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/6/6f/ChessSet.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gardening-1521662873.jpg',
    'https://theapachepowwow.net/wp-content/uploads/2017/05/calligraphy-featured.jpg',
    'https://www.businessmagazinegainesville.com/wp-content/uploads/2018/01/jugglingforbusiness.jpg',
    'https://www.sciencenews.org/wp-content/uploads/2019/07/071019_MT_poker-ai_feat.jpg',
    'https://www.musicnotes.com/images2/promos/store/900x520_piano-min.jpg',
    'https://www.rightthisminute.com/sites/default/files/videos/images/manly-whistle-show.png.converted_1312051944.jpg',
    'https://miro.medium.com/max/750/0*EGy-KJc-oToieoEz.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/ef/Stone_skimming_-Patagonia-9Mar2010.jpg',
    'burning-glass.com/wp-content/uploads/coding_screen_400x300-e1535048737568.jpg',
    'https://cdn.mos.cms.futurecdn.net/f1f22fdd6d75dad222ea6dfd52f29ec4-1200-80.jpg',
    'https://www.yogajournal.com/.image/t_share/MTQ3MTc4MTY5MjM1OTQxMTY3/2yogapedia_274_13_fnl.jpg',
    'https://d27ucmmhxk51xv.cloudfront.net/media/english/illustration/cartwheel.jpg?version=1.2.1',
    'https://cdn.careersinmusic.com/wp-content/uploads/2019/11/what-does-a-music-producer-do.jpg',
    'https://whatscookingamerica.net/wp-content/uploads/2017/07/Chocolate-Cake-Completed-1-opt.jpg',
    'https://miro.medium.com/max/4000/1*z6Qli8oi_nOPQCyqo3rRVg.png',
    'https://cdn.doyou.com/articles/the-10-most-important-yoga-poses-for-beginners-25270-bbaRsJ6k.jpg=w768',
    'adorama.com/alc/wp-content/uploads/2018/07/shutterstock_170815865-1024x563.jpg',
    'https://cdn.lynda.com/static/landing/images/hero/Digital_Animator_1200x630-1503546170318.jpg',
    'https://www.wellandgood.com/wp-content/uploads/2019/08/SM_Torso-1.jpeg',
    'https://www.invaluable.com/blog/wp-content/uploads/2019/03/benefits-of-sketching-hero.jpg',
  ];
  List<String> skillCategories = [
    'Music',
    'Arts & Crafts',
    'Arts & Crafts',
    'Education/Puzzles',
    'Arts & Crafts',
    'Misc',
    'Food',
    'Game/Puzzles',
    'Misc',
    'Arts & Crafts',
    'Misc',
    'Game/Puzzles',
    'Music',
    'Music',
    'Game/Puzzles',
    'Misc',
    'Game/Puzzles',
    'Music',
    'Misc',
    'Exercise',
    'Music',
    'Food',
    'Game/Puzzles',
    'Exercise',
    'Arts & Crafts',
    'Arts & Crafts',
    'Exercise',
    'Arts & Crafts',
  ];
  List<String> skillNames = [
    'Play the Recorder',
    'Crochet',
    'Paint like Bob Ross',
    'Solve the Rubix Cube',
    'Make Origami',
    'Do a card trick',
    'Make pizza',
    'Play chess',
    'Start gardening',
    'Write Caligraphy',
    'Juggle',
    'Play poker',
    'Play piano',
    'Whistle',
    'Pick a lock',
    'Skip a rock',
    'Code',
    'Play the Drums',
    'Do a handstand',
    'Do a cartwheel',
    'Write a song',
    'Bake a Cake',
    'Play Sudoku',
    'Do Yoga',
    'Learn Photography',
    'Learn Animation',
    'Stretch',
    'Draw',
  ];
  List<String> skillDescription = [
    'Learn to play this instrument past your 4th grade Level, although it\'s given a bad rep the recorder has a rich history and a beautiful tone',
    'You\'ll be able to make a terrible present for Christmas',
    'The man the myth the legend',
    'Start your quest to beat the world record of 3.47 seconds',
    'Learn to make something more complex than a paper airplane',
    'Pick a card...any card',
    'Anyone who says that money cannot buy happiness has clearly never spent their money on pizza',
    'It\'s like checkers, but harder',
    'Start a nice little ecosystem in your very own backyard',
    'Cursive, but better',
    'Learn how to control 3 or more balls at once',
    'Your gateway to earning big money at Vegas',
    'Become the next Mozart',
    'Step 1 purse your lips and blow',
    'Lockpicking is a great hobby to land you in jail',
    'For maximum skips, the stone should enter the water at a 20 degree angle. Scientists have found this to be the optimal angle for stone skipping',
    'Outside from the implications of coding which look good on a resume, coding actually does boost skills which are actually useful to most jobs. Problem solving and logic are the main two. Learning to code is like an exercise session for the “left” side of the brain',
    'How can you not love a man banging on the drums?',
    'The name is self explanatory. Stand but with yo hands. Don\'t land yourself in the hospital!',
    'If google can do a barrel roll you can learn to do a cartwheel',
    'Release your inner creative self and compose a masterpiece with garageband',
    'They say baking is a science and it really is. Learn how to make baked goods correctly!',
    'Sudoku is a logic-based, combinatorial number-placement puzzle. The objective is to fill a 9×9 grid with digits so that each column, each row, and each of the nine 3×3 subgrids that compose the grid contain all of the digits from 1 to 9',
    'a Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practiced for health and relaxation.',
    'Every phone has a good camera! You just need to learn how to use it!',
    'Animation can explain whatever the mind of man can conceive. Put your creative mind to work!',
    'Stretching is a form of physical exercise in which a specific muscle or tendon is deliberately flexed or stretched in order to improve the muscle\'s felt elasticity and achieve comfortable muscle tone.',
    'No more silly doodles when bored in class, step up your game and learn to draw for real!',
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EntryScreen(),
    );
  }
}
