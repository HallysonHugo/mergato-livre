// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$catsAtom =
      Atom(name: 'HomeControllerBase.cats', context: context);

  @override
  List<CatModel> get cats {
    _$catsAtom.reportRead();
    return super.cats;
  }

  @override
  set cats(List<CatModel> value) {
    _$catsAtom.reportWrite(value, super.cats, () {
      super.cats = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'HomeControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  @override
  String toString() {
    return '''
cats: ${cats},
loading: ${loading}
    ''';
  }
}
