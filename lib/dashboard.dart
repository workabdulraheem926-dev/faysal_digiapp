import 'package:faysal_digiapp/SendMoney/mainScreen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';
import 'widgets/transfer_beni.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsetsDirectional.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //AppBar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(158, 139, 139, 139),
                          blurRadius: .5,

                          offset: Offset(0, 1),
                        ),
                      ],

                      color: const Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 26,
                          color: const Color(0xFF33ADB8),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(158, 139, 139, 139),
                              blurRadius: .5,

                              offset: Offset(0, 1),
                            ),
                          ],

                          color: const Color.fromARGB(255, 255, 255, 255),
                          shape: BoxShape.circle,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 26,
                              color: const Color(0xFF33ADB8),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(158, 139, 139, 139),
                              blurRadius: .5,

                              offset: Offset(0, 1),
                            ),
                          ],

                          color: const Color.fromARGB(255, 255, 255, 255),
                          shape: BoxShape.circle,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code,
                              size: 26,
                              color: const Color(0xFF33ADB8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //AppBar
            //AccountCard
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.only(top: 20, bottom: 12, left: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(158, 112, 112, 112),
                    blurRadius: 2,

                    offset: Offset(0, .5),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF33ADB8),
                    const Color.fromARGB(255, 1, 44, 60),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DIGITAL CURRENT ACCOUNT PKR',
                    style: TextStyle(
                      color: const Color.fromARGB(174, 255, 255, 255),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.2,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'ABDUL RAHEEM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.2,
                    ),
                  ),

                  Row(
                    children: [
                      Text(
                        'PKR 1,790',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'PKR**FAYS*********7829',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(174, 255, 255, 255),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.copy,
                        color: Color.fromARGB(174, 255, 255, 255),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ), //AccountCard
            //ViewStatement
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(158, 112, 112, 112),
                    blurRadius: 2,

                    offset: Offset(0, .5),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bar_chart_outlined,
                    size: 32,
                    color: Color(0xFF33ADB8),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "View Statement",
                    style: TextStyle(
                      color: Color(0xFF33ADB8),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ), //ViewStatement
            SizedBox(height: 12),

            //Transfer/Bills

            //Transfer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(vertical: 22, horizontal: 8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(158, 112, 112, 112),
                    blurRadius: 2,

                    offset: Offset(0, .5),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  //transfer/bills buttons
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: const Color(0xFFe5eced),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Transfer
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 40,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF33ADB8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Transfers',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ), //Trans
                        SizedBox(width: 12),

                        //Bills
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 4,
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Bills',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ), //Bills
                      ],
                    ),
                  ),
                  SizedBox(height: 22),
                  //FavBenis
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Beni(
                        name: "Samson",
                        account: "0345 3556236",
                        icon: CupertinoIcons.person_solid,
                      ),
                      Beni(
                        name: "Samson",
                        account: "0345 3556236",
                        icon: CupertinoIcons.person_solid,
                      ),

                      Beni(
                        name: "Samson",
                        account: "0345 3556236",
                        icon: CupertinoIcons.person_solid,
                      ),
                      Beni(
                        name: "Samson",
                        account: "0345 3556236",
                        icon: CupertinoIcons.person_solid,
                      ),
                    ],
                  ), //FavBenis
                ],
              ),
            ), //Transfer/Bills

            SizedBox(height: 12),
            //Modules
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Btn(
                  text: "Send Money",
                  icon: Iconsax.money_change,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SendMoneyScreen(),
                      ),
                    );
                  },
                ),
                Btn(text: "Top Up", onTap: () {}, icon: Iconsax.mobile),
                Btn(text: "Pay Bills", icon: Iconsax.wallet_2, onTap: () {}),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Btn(text: "Raast", icon: Iconsax.bank, onTap: () {}),
                Btn(text: "Payments", icon: Iconsax.money_tick, onTap: () {}),
                Btn(text: "Cards", icon: Iconsax.card, onTap: () {}),
              ],
            ), //Modules
          ],
        ),
      ),
    );
  }
}
