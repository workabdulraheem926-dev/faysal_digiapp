import 'package:faysal_digiapp/dashboard.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 215, 215),
      body: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/images/headoffice.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 16, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/faysal_logo.png',
                          width: 150,
                          height: 150,
                        ),
                        Icon(
                          Icons.help_outline_sharp,
                          size: 46,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 310),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
      
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Login Button
                            Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(12),
                              child: InkWell(
                                onTap: () {
      
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Dashboard()));
                                },
                                child: Container(
                                  height: 85,
                                  width: 160,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 30,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xFF33ADB8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //Pin button
                            Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(18),
      
                              child: Container(
                                height: 85,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 22,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(255, 101, 101, 101),
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 44,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            //Finger button
                            Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(18),
                              child: Container(
                                height: 85,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 22,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromARGB(255, 101, 101, 101),
                                ),
                                child: Icon(
                                  Icons.fingerprint,
                                  size: 44,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Register for Digital Banking",
                          style: TextStyle(
                            wordSpacing: -1,
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //OpenAccount
                            Container(
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(18),
                                    child: Container(
                                      height: 75,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 18,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: const Color.fromARGB(
                                          255,
                                          101,
                                          101,
                                          101,
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFF33ADB8),
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.account_balance_outlined,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Open \nAccount',
                                    textAlign: TextAlign.center,
      
                                    style: TextStyle(
                                      height: 1.3,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //DigiMall
                            Container(
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(18),
                                    child: Container(
                                      height: 75,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 18,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: const Color.fromARGB(
                                          255,
                                          101,
                                          101,
                                          101,
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFF33ADB8),
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Digital\nMall',
                                    textAlign: TextAlign.center,
      
                                    style: TextStyle(
                                      height: 1.3,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //CardDeals
                            Container(
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(18),
                                    child: Container(
                                      height: 75,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 18,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: const Color.fromARGB(
                                          255,
                                          101,
                                          101,
                                          101,
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFF33ADB8),
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.credit_score,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Card\nDeals',
                                    textAlign: TextAlign.center,
      
                                    style: TextStyle(
                                      height: 1.3,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
      
                            //WhatsAppBanking
                            Container(
                              child: Column(
                                children: [
                                  //DigiMall
                                  Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(18),
                                    child: Container(
                                      height: 75,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 18,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: const Color.fromARGB(
                                          255,
                                          101,
                                          101,
                                          101,
                                        ),
                                        border: Border.all(
                                          color: const Color(0xFF33ADB8),
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.call,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'WhatsApp\nBanking',
                                    textAlign: TextAlign.center,
      
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ], //bottomButtons
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Icon(
                            Icons.keyboard_double_arrow_up_sharp,
                            size: 34,
                            color: const Color.fromARGB(255, 6, 205, 223),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
