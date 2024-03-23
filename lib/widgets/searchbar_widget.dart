import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: SvgPicture.asset(
            "assets/search_icon.svg",
            color: Colors.blueGrey,
          ),
          hintText: "  Search favorite Beverages",
          hintStyle: GoogleFonts.poppins(color: Colors.blueGrey, fontSize: 14),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 24,
          ),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 24,
          ),
          suffixIcon: SvgPicture.asset(
            "assets/search_2_icon.svg",
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
