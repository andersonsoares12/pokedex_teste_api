import 'package:flutter/material.dart';

import 'colorComponent.dart';

Color getColorForType(String type) {
  switch (type) {
    case 'grass':
      return CoresPokemon().grass;
    case 'fire':
      return CoresPokemon().fire;
    case 'water':
      return CoresPokemon().water;
       case 'bug':
      return CoresPokemon().bug;
    case 'flying':
      return CoresPokemon().flying;
    case 'electric':
      return CoresPokemon().electric;
      case 'ghost':
      return CoresPokemon().ghost;
    case 'normal':
      return CoresPokemon().normal;
    case 'psychic':
      return CoresPokemon().psychic;
       case 'steel':
      return CoresPokemon().steel;
    case 'rock':
      return CoresPokemon().rock;
    case 'poison':
      return CoresPokemon().poison;
   
    default:
      return Colors.grey; // Cor padrão caso o tipo não esteja mapeado
  }
}


