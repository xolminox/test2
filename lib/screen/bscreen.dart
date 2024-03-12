import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BScreen extends ConsumerWidget {
  final counterProvider = StateNotifierProvider((ref) => Counter());

  BScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    ref.listen(counterProvider, (previous, next) {
      print('이전상태 : $previous  /  현재ㅐ상태 : $next ');
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('B screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Count : ${count.toString()}',
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(height: 30),
            buildElevatedButton(
                () => ref.watch(counterProvider.notifier).increment(), '증가하기'),
            buildElevatedButton(
                () => ref.watch(counterProvider.notifier).decrement(), '감소하기'),
            buildElevatedButton(
                () => ref.watch(counterProvider.notifier).double(), 'X 2'),
            buildElevatedButton(
                () => ref.watch(counterProvider.notifier).zero(), '초기화(0)'),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildElevatedButton(VoidCallback onPressed, String title) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;

  void decrement() => state--;

  void double() => state *= 2;

  void zero() => state = 0;
}
