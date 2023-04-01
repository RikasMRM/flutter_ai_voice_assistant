import 'package:flutter/material.dart';
import 'package:flutter_ai_voice_assistant/palette.dart';
import 'package:flutter_ai_voice_assistant/feature_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VoxAI'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(children: [
        Stack(
          children: [
            // LOGO
            Container(
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/voxAI.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        // chat bubble
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
            top: 30,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.borderColor,
            ),
            borderRadius: BorderRadius.circular(20).copyWith(
              topLeft: Radius.zero,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Hi, What task can i do for you?',
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Palette.mainFontColor,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(
            top: 10,
            left: 22,
          ),
          child: const Text(
            'Here are a few features',
            style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Palette.mainFontColor,
              fontSize: 25,
            ),
          ),
        ),
        // features list
        Column(
          children: const [
            FeatureBox(
              color: Palette.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText:
                  'A smarter way to stay organized and informed with ChatGPT',
            ),
            FeatureBox(
              color: Palette.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assistant powered by Dall-E',
            ),
            FeatureBox(
              color: Palette.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText:
                  'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
            )
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Palette.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
