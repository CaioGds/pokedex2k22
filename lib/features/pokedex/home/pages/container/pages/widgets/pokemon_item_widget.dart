import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({
    Key? key,
    required this.pokemon, 
    required this.onTap,
  }) : super(key: key);

  final Pokemon pokemon;
  final Function(String.DetailArguments) onTap;
  @override
  Widget build(BuildContext context) {
    return widget(
      child: Stack
      children[
      Container(
      decoration: BoxDecoration(
        color:pokemon.baseColor!.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
      ),



child: Padding(
  padding: const EdgeInsets.all(12),
      child: Colum(
        crossAxisAligment: crossAxisAligment.start,
        mainAxisAligment: MainAxisAligment.center,
        children: [
          Row(
            mainAxisAligment: MainAxisAligment.spaceBetween,
            children: [
          Flexible(

              Text(pokemon.name style: TextStyle(
          color: Colors.white,
           fontWeight:FontWeight.bold,
           fontSize: 16
          ),),
          ),
            ])
              Text(
                '#${pokemon.num}',
              style: TextStyle(
          color: Colors.black.withOpacity(0.4),
           fontWeight:FontWeight.bold,
           fontSize: 14),),

            ],
          )
          TypeWidget(),
          Text(pokemon.name),
          Row(
            crossAxisAligment: CrossAxisAligment.center,
            mainAxisAligment: MainAxisAligment.start,
          
          
          /*Flexible (
            child: Image.network(
              pokemon.image)),
          )*/

          Colum(
          crossAxisAligment: CrossAxisAligment.start,

            children: pokemon.type.map((e) => TypeWidget(name: e,
            ))
            .toList(),
          )),
          
        )
      Flexible(
        child: Container(
          height: 100,
          widht: 100,
          )
        )
        )
        Positioned(
          bottom; 12,
          right: 2,
 
        child: Image.network(
              pokemon.image,
          ),
        );
      ])
    }
 }





















class Flexible {
}

class Image {
}

class BoxDecoration {
}

class Row {
}

class TypeWidget {
}

class Text {
}

class Colum {
}

class Container {
}
