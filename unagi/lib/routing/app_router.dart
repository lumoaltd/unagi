import 'package:go_router/go_router.dart';
import '../main.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>
          const MyHomePage(title: 'Flutter Demo Home Page'),
    ),
  ],
);
