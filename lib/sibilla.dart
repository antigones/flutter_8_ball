import 'dart:math';

import 'package:flutter/widgets.dart';

class Sibilla extends ChangeNotifier {

  final List<String> _answers = [
  "As I see it, yes",
  "It is certain",
  "It is decidedly so",
  "Most likely",
  "Outlook good",
  "Signs point to yes",
  "Without a doubt",
  "Yes",
  "Yes – definitely",
  ];

  String _answer = "Ask a question and click the button...";

  void getAnswer() {
    var rng = Random();
    _answer = _answers[rng.nextInt(_answers.length)];
    notifyListeners();
  }

  String get answer => _answer;

}