import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/models/pokemon.dart';
import 'getcolorpokemontypes.dart';

class PokemonStatsCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonStatsCard({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 120,
              width: 412,
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'HP',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                color: getColorForType(pokemon.types.first),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'ATK',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: getColorForType(pokemon.types.first),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'DEF',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: getColorForType(pokemon.types.first),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SATK',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: getColorForType(pokemon.types.first),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SDEF',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: getColorForType(pokemon.types.first),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SPD',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: getColorForType(pokemon.types.first),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      width: 26.17,
                      thickness: 1,
                      indent: 2,
                      endIndent: 2,
                      color: Color(0xFF434242),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '${pokemon.stats[0]}',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '${pokemon.stats[1]}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '${pokemon.stats[2]}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '${pokemon.stats[3]}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '${pokemon.stats[4]}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '${pokemon.stats[5]}',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8,top: 8, right: 20),
                      child: SizedBox(
                              height: 120,
                              width: 233,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[0]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[1]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[2]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                 const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[3]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[4]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                 const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: double.parse(pokemon.stats[5]) / 100,
                          color: getColorForType(pokemon.types.first),
                        ),
                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}