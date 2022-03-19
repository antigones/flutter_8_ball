import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_8_ball/sibilla.dart';
import 'package:provider/provider.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Sibilla sibilla = Provider.of<Sibilla>(context, listen: true);
    return Column(
      children: [
        SizedBox(
            height: 20,
            child:Container()),
        Text(sibilla.answer),
        SizedBox(
            height: 20,
            child:Container()),
        FilledButton(
          child: const Text('Get response'),
          onPressed: () {
            sibilla.getAnswer();
          },
        ),
      ],
    );
  }
}
