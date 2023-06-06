import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/utils/about_pokemon.dart';
import '../../domain/models/pokemon.dart';
import '../../utils/colorComponent.dart';
import '../../utils/getcolorpokemontypes.dart';
import '../../utils/pokemeon_stats.dart';

class DetalhesPokemons extends StatelessWidget {
  final Pokemon pokemon;
  const DetalhesPokemons({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final cores = CoresPokemon();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getColorForType(pokemon.types.first),
        title: Expanded(
          flex: 1,
          child: Row(
            children: [
              Text(
                pokemon.name,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 20,
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.45,
              ),
              Text(
                '#${pokemon.id}',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 20,
                  color: cores.whitep,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: getColorForType(pokemon.types.first),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.23,
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 50),
                        height: screenHeight * 0.62,
                        width: screenWidth * .98,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 58, 0, 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 8, right: 8, bottom: 2),
                                    height: 20,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color:
                                          getColorForType(pokemon.types.first),
                                      borderRadius: BorderRadius.circular(15),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Text(
                                      pokemon.types.first,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 12,
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 8, right: 8, bottom: 2),
                                    height: 20,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color:
                                          getColorForType(pokemon.types.last),
                                      borderRadius: BorderRadius.circular(10),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Text(
                                      pokemon.types.last,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 12,
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'About',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 20,
                                color: getColorForType(pokemon.types.first),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                      
                            AboutPokemon(pokemon: pokemon),
                             const SizedBox(height: 24,),

                             SizedBox(
                              height: 60,
                              width: 312,
                              child: Text('Lorem ipsum dolor sit amet. Ex ratione eveniet ut quae quaerat aut voluptas possimus ut quam iste et repudiandae voluptatem.',
style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
),
                             ),

                             const SizedBox(height: 24,),
                            Text('Base Stats',
                             style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 20,
                                color: getColorForType(pokemon.types.first),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 16),
                                PokemonStatsCard(pokemon: pokemon),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: Center(
              child: Image.network(
                pokemon.imageUrl,
                fit: BoxFit.fill,
                height: 250,
                width: 250,
                scale: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
