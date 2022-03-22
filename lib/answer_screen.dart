import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_8_ball/sibilla.dart';
import 'package:provider/provider.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key, this.controller}) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    Sibilla sibilla = Provider.of<Sibilla>(context, listen: true);
    return ScaffoldPage.scrollable(
        header: const PageHeader(title: Text('Sibilla')),
        scrollController: controller,
        children: [
          Text(sibilla.answer),
          SizedBox(
              height: 20,
              child: Container()),
          FilledButton(
            child: const Text('Get response'),
            onPressed: () {
              sibilla.getAnswer();
            },
          ),
        ]);
  }
}
