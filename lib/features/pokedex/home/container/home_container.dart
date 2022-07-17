import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';
import 'package:flutter_application_1/common/repositories/pokemon_repository.dart';
import 'package:flutter_application_1/features/pokedex/home/pages/container/detail_container.dart';
import 'package:flutter_application_1/home/pages/home_error.dart';
import 'package:flutter_application_1/home/pages/home_loading.dart';
import 'package:flutter_application_1/home/pages/home_page.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key, required this.repository, required this.onItemTap,}) : super(key: key);

  final IPokemonRepository repository;
  final Function(String, DetailArguments) onItemTap;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: repository.getAllPokemons(),
        // ignore: dead_code, dead_code
        builder: (context snapchot) {
          if (snapchot.ConnectionState == ConnectionState) {}
          return HomeLoading();

          if (snapchot.ConnectionState == ConnectionState.done &&
              snapchot.hasData) ;
          {
            return HomePage(list: snapchot.data!, onItemTap: onItemTap,);
          }
          if (snapchot.hasError) {
            return HomeError(
              error: (snapchot.error as Failure).message!,
            );
          }

          return Container();
        });
  }
}
