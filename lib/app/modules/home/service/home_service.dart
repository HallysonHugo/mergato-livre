import 'package:mergato_livre/app/modules/cat/model/cat_model.dart';
import 'package:mergato_livre/app/modules/home/repository/home_repository.dart';

class HomeService {
  final HomeRepository _homeRepository = HomeRepository();

  Future<List<CatModel>> getCats() async {
    try {
      final response = await _homeRepository.getCats();
      List<CatModel> cats =
          response.data.map<CatModel>((cat) => CatModel.fromJson(cat)).toList();
      return cats;
    } catch (e) {
      rethrow;
    }
  }
}
