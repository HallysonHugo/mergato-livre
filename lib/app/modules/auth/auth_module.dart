import 'package:flutter_modular/flutter_modular.dart';
import 'package:mergato_livre/app/modules/auth/view/login_page.dart';

class AuthModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(LoginPage.route, child: ((context) => const LoginPage()));
  }
}
