import 'package:flutter_modular/flutter_modular.dart';
import 'package:mergato_livre/app/modules/home/controller/home_controller.dart';
import 'package:mergato_livre/app/modules/home/view/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add(HomeController.new);
  }

  @override
  void routes(r) {
    r.child(HomePage.route, child: ((context) => const HomePage()));
  }
}
