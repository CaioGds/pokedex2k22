import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/features/pokedex/home/container/home_container.dart';
import 'package:flutter_application_1/features/pokedex/home/pages/container/pages/widgets/pokemon_item_widget.dart';

class TypeWidget extends StatelessWidget {
  const TypeWidget({
    Key? key, required this.name,
    }) : super(key: key);
 final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
      padding: const EdgeInsets.all(6),
      child: Text(
        name, 
        style: TextStyle(
          color: Colors.white,
           fontWeight:FontWeight.bold,
           fontSize: 12
           
          )
        ),
      ),
    )
  )}
}

class Colors {
}

class Container {
}
