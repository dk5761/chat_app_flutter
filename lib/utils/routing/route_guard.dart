import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteGuard extends AutoRedirectGuard {
  RouteGuard(this.ref);

  final Ref ref;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // if (read(authRepositoryProvider).currentUser!.user.position == 0) {
    //   return resolver.next();
    // }
    // router.push(const DashboardRoute());
    return resolver.next();
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    // TODO: implement canNavigate
    throw UnimplementedError();
  }
}
