import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/presentation/providers/providers.dart';
import '../../../config/config.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final randomName = ref.watch(randomNameGnProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Text(
          randomName,
          style: titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh_rounded),
        onPressed: () {
          ref
              .read(randomNameGnProvider.notifier)
              .changeName(RandomNameGenerator.getRandomName());
        },
      ),
    );
  }
}
