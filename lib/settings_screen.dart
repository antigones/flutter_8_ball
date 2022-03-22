import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_8_ball/theme.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key, this.controller}) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    return ScaffoldPage.scrollable(
        header: const PageHeader(title: Text('Settings')),
        scrollController: controller,
        children: [
          Text('Theme mode',
              style: FluentTheme.of(context).typography.subtitle),
          const SizedBox(height: 10.0),
          ...List.generate(ThemeMode.values.length, (index) {
            final mode = ThemeMode.values[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: RadioButton(
                checked: appTheme.mode == mode,
                onChanged: (value) {
                  if (value) {
                    appTheme.mode = mode;
                  }
                },
                content: Text('$mode'.replaceAll('ThemeMode.', '')),
              ),
            );
          }),
        ]);
  }
}
