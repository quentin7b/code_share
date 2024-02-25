import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_extra_riverpod_gorouter/item_model.dart';

class ItemService {
  // Just fake an API call with a delay
  Future<Item> getItem(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return Item(id: id, name: 'Item $id');
  }
}

final itemServiceProvider = Provider<ItemService>((ref) {
  return ItemService();
});
