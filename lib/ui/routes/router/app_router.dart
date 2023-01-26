import 'package:auto_route/auto_route.dart';

import '../../auth/sign_in.dart';
import '../../auth/sign_up.dart';
import '../../home/home_page.dart';
import '../../main/main_page.dart';
import '../../orders/order_page.dart';
import '../../profile/profile_page.dart';
import '../../search/search_page.dart';
import '../guards/auth.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(
      page: MainPage,
      guards: [AuthGuard],
      children: [
        AutoRoute(page: HomePage, initial: true),
        AutoRoute(page: SearchPage),
        AutoRoute(page: OrderPage),
        AutoRoute(page: ProfilePage),
      ],
    ),
  ],
)
class $AppRouter {}
