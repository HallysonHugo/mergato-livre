import 'package:mergato_livre/app/modules/cat/model/cat_model.dart';
import 'package:mergato_livre/app/modules/home/service/home_service.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeService _homeService = HomeService();

  @observable
  List<CatModel> cats = [];

  @observable
  bool loading = false;

  Future getCats() async {
    try {
      cats = await _homeService.getCats();
    } finally {
      loading = false;
    }
  }
}
