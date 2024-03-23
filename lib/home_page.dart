import 'package:assignment/coffee_order_page.dart';
import 'package:assignment/widgets/recommendation.dart';
import 'package:assignment/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/searchbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/blur.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 34.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            const Text(
                              "👋",
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20/12/2023",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  "Hi, Joshua ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24, color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete_sweep_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/600px-Pierre-Person.jpg"),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(child: MySearchBar()),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        color: const Color.fromARGB(123, 49, 49, 49),
                        child: const Recommendation(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Get it instantly",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.75,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: ListView(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CoffeeOrderingScreen(),
                                    ),
                                  );
                                },
                                child: const Tile(),
                              ),
                              const Tile(),
                              const Tile(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
