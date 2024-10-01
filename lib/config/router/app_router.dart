import 'package:go_router/go_router.dart';
import 'package:push_app/presentation/screens/details_screen.dart';
import 'package:push_app/presentation/screens/home_screen.dart';

final appRouter = GoRouter(routes: [
  // Home
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),

  // Details
  GoRoute(
    path: '/push-details/:pushMessageId',
    builder: (context, state) => DetailsScreen(
        pushMessageId: state.pathParameters['pushMessageId'] ?? ''),
  ),
]);
