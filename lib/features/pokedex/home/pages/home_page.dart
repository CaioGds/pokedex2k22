import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/pokedex/home/pages/container/detail_container.dart';
import 'package:flutter_application_1/features/pokedex/home/pages/container/pages/widgets/pokemon_item_widget.dart';

import '../../common/models/pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key, required this.list}) : super(key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title:Padding(
          padding: const EdgeInsets.only(left: 10),
          Text('Pokedex', style: TextStyle(
          color: Colors.black,
          fontSize: 26
        ),),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10)
        child: IconButton(onPressed: () {
        
        }, icon: Icon(
          Icon.menu, 
        color: Colors.black,
          ),
        ),
      ),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24)
      )
      
      child: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing 12,
      children: list.map((e) => PokemonItemWidget(pokemon: e
      onTap: onItemTap,),
      ),
      .toList(),
        );
      )
    )
  }
}
