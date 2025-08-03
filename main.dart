import 'dart:io';

void main() {
  // 🧠 Welcome message
  print('🧠 Welcome to the CLI Quiz App!');

  // 📝 Define questions and answers using a List of Maps
  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the capital of France?',
      'options': ['1. Berlin', '2. London', '3. Paris', '4. Madrid'],
      'answer': 3
    },
    {
      'question': 'Which programming language is used for Flutter?',
      'options': ['1. Java', '2. Dart', '3. Python', '4. Kotlin'],
      'answer': 2
    },
    {
      'question': 'What does CPU stand for?',
      'options': [
        '1. Central Process Unit',
        '2. Control Processing Unit',
        '3. Central Processing Unit',
        '4. Computer Primary Unit'
      ],
      'answer': 3
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['1. Venus', '2. Mars', '3. Jupiter', '4. Saturn'],
      'answer': 2
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'options': [
        '1. William Shakespeare',
        '2. Charles Dickens',
        '3. Mark Twain',
        '4. Jane Austen'
      ],
      'answer': 1
    },
  ];

  // 🧮 Quiz logic
  int score = 0;

  for (int i = 0; i < quizData.length; i++) {
    print('\nQuestion ${i + 1}: ${quizData[i]['question']}');
    for (String option in quizData[i]['options']) {
      print(option);
    }

    stdout.write('Enter your answer (1-4): ');
    int? userAnswer = int.tryParse(stdin.readLineSync() ?? '');

    if (userAnswer != null && userAnswer == quizData[i]['answer']) {
      print('✅ Correct!');
      score++;
    } else {
      print('❌ Incorrect.');
    }
  }

  // 🎯 Final score
  print('\n🎉 Quiz Completed! Your final score is $score out of ${quizData.length}');
}