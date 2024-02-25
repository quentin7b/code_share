import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_extra_riverpod_gorouter/item_details_provider.dart';
import 'package:navigation_extra_riverpod_gorouter/item_model.dart';

class DetailsPage extends ConsumerWidget {
  final String id;
  final Item? initialItem;

  const DetailsPage({
    super.key,
    required this.id,
    this.initialItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemFuture =
        ref.watch(itemDetailsProvider(id, initialValue: initialItem));
    return Scaffold(
      body: itemFuture.when(
        data: (item) => ItemView(item: item),
        error: (error, _) => ErrorView(error: error),
        loading: () => const LoadingView(),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Details for ${item.id} : ${item.name}');
  }
}

class ErrorView extends StatelessWidget {
  final Object error;

  const ErrorView({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Error: $error');
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Loading...');
  }
}
