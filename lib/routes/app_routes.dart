import 'package:go_router/go_router.dart';
import 'package:lunchbox/screens/home/home_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
