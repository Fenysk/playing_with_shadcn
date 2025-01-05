import 'package:playing_with_shadcn/counter_app.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      title: 'My App',
      home: CounterApp(),
      theme: ThemeData(
        colorScheme: ColorSchemes.darkZinc(),
        radius: 0.7,
      ),
    );
  }
}
