import 'package:assignment/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeOrderingScreen extends StatefulWidget {
  const CoffeeOrderingScreen({super.key});

  @override
  State<CoffeeOrderingScreen> createState() => _CoffeeOrderingScreenState();
}

class _CoffeeOrderingScreenState extends State<CoffeeOrderingScreen> {
  String cupFilling = 'Full';
  String selectedMilk = 'Skim Milk';
  String selectedSugar = 'Sugar x1';
  bool isHighPriority = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.62),
            child: Image.asset(
              'assets/coffee.png',
              height: MediaQuery.of(context).size.height * 0.42,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 550,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                image: const DecorationImage(
                    image: AssetImage("assets/blur.png"), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lattè",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 24),
                              ),
                              Text(
                                "4.9 ⭐ (495)",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButton<String>(
                              hint: const Text("1"),
                              items: <String>['1', '2', '3', 'More']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                        style: GoogleFonts.inter(
                          color: Colors.white60,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Choice of Cup Filling",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CupFillingButton(
                            size: 'Full',
                            isSelected: cupFilling == 'Full',
                            onPressed: () {
                              setState(() {
                                cupFilling = 'Full';
                              });
                            },
                          ),
                          CupFillingButton(
                            size: 'Half',
                            isSelected: cupFilling == 'Half',
                            onPressed: () {
                              setState(() {
                                cupFilling = 'Half';
                              });
                            },
                          ),
                          CupFillingButton(
                            size: '3/4th',
                            isSelected: cupFilling == '3/4th',
                            onPressed: () {
                              setState(() {
                                cupFilling = '3/4th';
                              });
                            },
                          ),
                          CupFillingButton(
                            size: '1/4th',
                            isSelected: cupFilling == '1/4th',
                            onPressed: () {
                              setState(() {
                                cupFilling = '1/4th';
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Choice of Milk",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedMilk == 'Skim Milk',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedMilk =
                                                value ? 'Skim Milk' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  Skim Milk',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value:
                                            selectedMilk == 'Full Cream Milk',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedMilk =
                                                value ? 'Full Cream Milk' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  Full Cream Milk',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedMilk == 'Almond Milk',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedMilk =
                                                value ? 'Almond Milk' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  Almond Milk',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedMilk == 'No Cream Milk',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedMilk =
                                                value ? 'No Cream Milk' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  No Cream Milk',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Choice of Sugar",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedSugar == 'Sugar x1',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedSugar =
                                                value ? 'Sugar x1' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Sugar x1',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedSugar == 'Sugar x2',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedSugar =
                                                value ? 'Sugar x2' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Sugar x2',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedSugar == 'Sugar x1/2',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedSugar =
                                                value ? 'Sugar x1/2' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Sugar x1/2',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    child: FittedBox(
                                      child: Switch(
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.green,
                                        value: selectedSugar == 'No Sugar',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedSugar =
                                                value ? 'No Sugar' : '';
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'No Sugar',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.95,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(159, 0, 0, 0),
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: isHighPriority,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() {
                                        isHighPriority = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    'High Priority',
                                    style: GoogleFonts.inter(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                              SubmitButton()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Center(
          child: Text(
            "Submit",
            style:
                GoogleFonts.inter(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
