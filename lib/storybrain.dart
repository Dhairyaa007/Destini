class StoryBrain {
  // String currentStory = '';
  // String choice1 = '';
  // String choice2 = '';
  int counter = 0;

  List<Map> storyMap = [
    {
      'storyTitle':
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      'choice1': 'I\'ll hop in. Thanks for the help!',
      'choice2': 'Better ask him if he\'s a murderer first.'
    },
    {
      'storyTitle': 'He nods slowly, unphased by the question.',
      'choice1': 'At least he\'s honest. I\'ll climb in.',
      'choice2': 'Wait, I know how to change a tire.'
    },
    {
      'storyTitle':
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      'choice1': 'I love Elton John! Hand him the cassette tape.',
      'choice2': 'It\'s him or me! You take the knife and stab him.'
    },
    {
      'storyTitle':
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      'choice1': 'Restart',
      'choice2': ''
    },
    {
      'storyTitle':
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      'choice1': 'Restart',
      'choice2': ''
    },
    {
      'storyTitle':
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      'choice1': 'Restart',
      'choice2': ''
    }
  ];

  String playStory() {
    return storyMap[counter]['storyTitle'];
  }

  String getChoice1() {
    return storyMap[counter]['choice1'];
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return storyMap[counter]['choice2'];
  }

  void nextStory(int userChoice) {
    if (userChoice == 1 && counter == 0) {
      counter = 2;
    } else if (userChoice == 2 && counter == 0) {
      counter = 1;
    } else if (userChoice == 1 && counter == 1) {
      counter = 2;
    } else if (userChoice == 2 && counter == 1) {
      counter = 3;
    } else if (userChoice == 1 && counter == 2) {
      counter = 5;
    } else if (userChoice == 2 && counter == 2) {
      counter = 4;
    } else if (counter == 3 || counter == 4 || counter == 5) {
      counter = 0;
    }
  }

  bool buttonShouldBeVisible() {
    if (counter < 3) {
      return true;
    } else {
      return false;
    }
  }
}

// List<Story> storyData = [];
// void displayStory() {
//   for (int id = 0; id < storyMap.length - 1; id++) {
//     currentStory = storyMap[id]['storyTitle'];
//     choice1 = storyMap[id]['choice1'];
//     choice2 = storyMap[id]['choice2'];
//     storyData.add(Story(currentStory, choice1, choice2));
//   }
// }
// }