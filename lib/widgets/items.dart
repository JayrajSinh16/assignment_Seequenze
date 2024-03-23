import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right : 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(116, 158, 158, 158),
        ),
        width: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/Coffee2.1.png',
                ),
              ),
              Text("Hot Cappuccino",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text("Espresso, Streamed Milk",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12)),
                      Text(
                        "4.9 ⭐ (458)",
                        style: GoogleFonts.poppins(
                            fontWeight:
                                FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(5),
                      color: Colors.green[300],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
