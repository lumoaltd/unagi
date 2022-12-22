import 'package:go_router/go_router.dart';
import '../main.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: 'Unagi Home Page'),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const MyHomePage(title: 'Settings'),
    ),
  ],
);
