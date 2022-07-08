import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_app/randomizer_change_notifier.dart';
import 'package:my_flutter_app/range_selector_page.dart';

void main() {
  runApp(const AppWidget());
}

final randomizerProvider = ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          title: 'Randomizer',
          theme: ThemeData(primarySwatch: Colors.green),
          home: RangeSelectorPage(),
        )
    );
  }
}