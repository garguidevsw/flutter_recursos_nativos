import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/presentation/providers/random_names_provider.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomNamesStream = ref.watch(namesStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: randomNamesStream.when(
        data: (data) => Center(
          child: Text(data),
        ),
        error: (error, stackTrace) => Text('Error: $error'),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
