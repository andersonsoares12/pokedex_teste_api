import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextoPokedex extends StatelessWidget {
  const TextoPokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
children: [
 Text(
                  'Pokédex',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontSize: 24,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
],

    );
  }
}