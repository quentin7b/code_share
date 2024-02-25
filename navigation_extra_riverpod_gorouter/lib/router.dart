import 'package:go_router/go_router.dart';
import 'package:navigation_extra_riverpod_gorouter/details_page.dart';
import 'package:navigation_extra_riverpod_gorouter/item_model.dart';
import 'package:navigation_extra_riverpod_gorouter/list_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ListPage(),
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) => DetailsPage(
            id: state.pathParameters['id']!,
            initialItem: state.extra as Item?,
          ),
        ),
      ],
    ),
  ],
);
