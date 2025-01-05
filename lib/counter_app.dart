import 'package:shadcn_flutter/shadcn_flutter.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    void increment() => setState(() => _count++);
    void decrement() => setState(() => _count--);

    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(
            shape: ButtonShape.circle,
            onPressed: decrement,
            child: Icon(Icons.remove),
          ),
          PrimaryBadge(child: Text(_count.toString()).h1()),
          PrimaryButton(
            shape: ButtonShape.circle,
            onPressed: increment,
            child: Icon(Icons.add),
          ),
        ],
      ).gap(32),
    );
  }
}
