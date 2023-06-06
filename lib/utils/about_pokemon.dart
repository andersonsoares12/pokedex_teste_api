import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/models/pokemon.dart';

class AboutPokemon extends StatelessWidget {
  final Pokemon pokemon;
  const AboutPokemon({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 48,
            width: 312,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/icons/icon_peso.png'),
                            fit: BoxFit.cover,
                            height: 12.33,
                            width: 10.76,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            '${pokemon.weight} kg',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Weight',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
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
                          const Image(
                            image: AssetImage('assets/icons/icon_altura.png'),
                            fit: BoxFit.cover,
                            height: 12.33,
                            width: 10.76,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            '${pokemon.height} kg',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Height',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
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
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        '${pokemon.moves[0]}',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '${pokemon.moves[1]}',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'moves',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.62,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
