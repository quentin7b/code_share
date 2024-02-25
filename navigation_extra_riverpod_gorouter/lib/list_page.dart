import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_extra_riverpod_gorouter/item_model.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List of 10 items
    final items =
        List.generate(10, (index) => Item(id: '$index', name: 'Item $index'));
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () => GoRouter.of(context).push(
            '/${items[index].id}',
            extra: items[index],
          ),
          title: Text('Item ${items[index].name}'),
        ),
      ),
    );
  }
}
