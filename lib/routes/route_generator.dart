import 'package:go_router/go_router.dart';
import 'package:kb_demo_startup/error_screen/error_screen.dart';
import 'package:kb_demo_startup/flow_1/flow1_screen1.dart';
import 'package:kb_demo_startup/flow_1/flow1_screen2.dart';
import 'package:kb_demo_startup/flow_2/flow2_screen1.dart';
import 'package:kb_demo_startup/flow_2/flow2_screen2.dart';
import 'package:kb_demo_startup/home_page.dart';
import 'package:kb_demo_startup/routes/route_names.dart';
import 'package:kb_demo_startup/routes/route_paths.dart';
import 'package:kb_demo_startup/splash_screen.dart/splash_screen.dart';

class AppRouter {
  static GoRouter returnRouter(bool isAuth) {
    return GoRouter(
      initialLocation: RoutePaths.splashPath,
      routes: [
        GoRoute(
          name: RouteNames.homeRouteName,
          path: RoutePaths.homePath,
          builder: (context, state) => const MyHomePage(),
        ),
        GoRoute(
          name: RouteNames.splashRouteName,
          path: RoutePaths.splashPath,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: RouteNames.flow1_screen1Name,
          path: RoutePaths.flow1_screen1Path,
          builder: (context, state) => const Flow1Screen1(),
          routes: [
            GoRoute(
              name: RouteNames.flow1_screen2Name,
              path: RoutePaths.flow1_screen2Path,
              builder: (context, state) => const Flow1Screen2(),
            ),
          ],
        ),

        GoRoute(
          name: RouteNames.flow2_screen1Name,
          path: RoutePaths.flow2_screen1Path,
          builder: (context, state) => const Flow2Screen1(),
          routes: [
            GoRoute(
              name: RouteNames.flow2_screen2Name,
              path: RoutePaths.flow2_screen2Path,
              builder: (context, state) => const Flow2Screen2(),
            ),
          ],
        ),
      ],
      redirect: (context, state) async {
        if (state.uri.path == RoutePaths.splashPath) {
          await Future.delayed(const Duration(seconds: 0));
          return RoutePaths.homePath; // Always go to home after splash
        }
        return null;
      },
      errorBuilder: (context, state) => const Errorpage(),
    );
  }
}
