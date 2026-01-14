import 'package:faysal_digiapp/widgets/fav_beni_fromAccount.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:faysal_digiapp/widgets/moving_chevron.dart';

import 'package:flutter/Material.dart';

class SendMoneyS3 extends StatelessWidget {
  const SendMoneyS3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, size: 18),
            ),
            Text(
              'Send Money',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.all(6),
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
              child: Icon(Icons.home, color: const Color(0xFF33ADB8)),
            ),
          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          //MainColumn
          children: [
            SizedBox(height: 16),
            Text(
              'Transfering',
              style: TextStyle(
                fontSize: 24,
                color: const Color.fromARGB(255, 104, 104, 104),
                letterSpacing: -0.5,
              ),
            ),

            SizedBox(height: 20),
            //Balance
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 12,
                      bottom: 12,
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PKR',
                              style: TextStyle(
                                fontSize: 24,
                                color: const Color.fromARGB(255, 163, 163, 163),
                                letterSpacing: -0.2,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '100',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.2,
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
            SizedBox(height: 26),

            //From/to Accounts
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  FromAccounts(
                    beniName: "Abdul Raheem",
                    icon: Icons.person,
                    accountNumber: '034568844',
                    iconSize: 40,
                    iconColor: Colors.white,
                    accountType: 'Current Account',
                    fromToAccountText: 'From',
                    
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1,
                        dashPattern: [4, 8], // [dash length, gap length]
                        padding: EdgeInsets.zero,
                        borderType: BorderType.RRect,
                        radius: Radius.circular(0),
                        child: SizedBox(height: 190, width: 0),
                      ),
                      MovingChevron(
                        iconSize: 38,
                        movementRange: 5,
                        speedMilliseconds: 900,
                        spacingBetweenIcons: -5,
                      ),
                    ],
                  ),

                  Spacer(),

                  FromAccounts(
                    beniName: "Abdul Raheem",
                    icon: Icons.person,
                    accountNumber: 'PK10FAYS3554301000007905',
                    fontWeight: FontWeight.w500,
                    iconSize: 40,
                    iconColor: Colors.white,
                    accountType: 'Bank Al Habib',
                    fromToAccountText: 'To',
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),

            //Schedule of charges text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fee as per',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 163, 163, 163),
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Schedule of Charges',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 0.7,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 163, 163, 163),
                    letterSpacing: -0.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            Expanded(child: SizedBox()),
            //Buttons (Schedule/Next)
            SwipeButton(
              width: double.infinity,
              height: 65,
              thumb: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 25,
              ),
              activeThumbColor: Color(0xFF33ADB8),
              borderRadius: BorderRadius.circular(35),
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Swipe to Transfer",
                  style: TextStyle(
                    color: Color(0xFF33ADB8),
                    fontSize: 18,
                    letterSpacing: -0.1,
                  ),
                ),
              ),
              onSwipe: () {},
            ),

            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
