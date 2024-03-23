import 'package:assignment/widgets/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " Most Popular Beverages",
            style:
                GoogleFonts.poppins(color: Colors.white60),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Items(),
              Items(),
              Items(),
            ],
          ),
        )
      ],
    );
  }
}
