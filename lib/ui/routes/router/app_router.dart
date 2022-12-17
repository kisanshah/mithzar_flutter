import 'package:auto_route/auto_route.dart';

import '../../auth/sign_in.dart';
import '../../auth/sign_up.dart';
import '../../home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
