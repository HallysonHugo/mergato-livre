import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mergato_livre/app/modules/home/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _homeController = Modular.get();

  @override
  void initState() {
    _homeController.getCats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Observer(builder: (context) {
      return ListView.builder(
        itemCount: _homeController.cats.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image(image: NetworkImage(_homeController.cats[index].image)),
              ListTile(
                title: Text(_homeController.cats[index].name),
                subtitle: Text(_homeController.cats[index].description),
              ),
            ],
          );
        },
      );
    }));
  }
}
