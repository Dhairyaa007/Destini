import 'dart:io';
import 'package:flutter/material.dart';
import 'storybrain.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const Destini());
}

class Destini extends StatefulWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  State<Destini> createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  StoryBrain storyBrain = StoryBrain();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Destini',
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    exit(0);
                  },
                  icon: const Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                  ),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  )),
            ],
            backgroundColor: Colors.grey.shade900,
            title: const Text(
              'DESTINI',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 25.0,
                fontFamily: 'LuckiestGuy',
                fontWeight: FontWeight.bold,
                letterSpacing: 3.5,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                          child: Text(
                        storyBrain.playStory(),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      )),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFD61C4E))),
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(1);
                        });
                      },
                      child: Text(
                        storyBrain.getChoice1(),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Visibility(
                      visible: storyBrain.buttonShouldBeVisible(),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFFEB139))),
                        onPressed: () {
                          setState(() {
                            storyBrain.nextStory(2);
                          });
                        },
                        child: Text(
                          storyBrain.getChoice2(),
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}