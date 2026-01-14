import 'package:faysal_digiapp/widgets/cluade_button_mine.dart';
import 'package:faysal_digiapp/widgets/fav_beni_fromAccount.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:faysal_digiapp/widgets/moving_chevron.dart';

import 'package:flutter/Material.dart';

class SendMoneyS4 extends StatelessWidget {
  const SendMoneyS4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.all(6),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF33ADB8),
              ),
              child: Icon(Icons.home, color: Colors.white),
            ),
          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          //MainColumn
          children: [
            Image.asset('assets/images/faysalbankfull.png'),
            SizedBox(height: 16),
            Container(//transaction Status
              margin: EdgeInsets.symmetric(horizontal: 45),
              padding: EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFF2791a8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaction Status',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(width: 12),
                  CustomButton(
                    text: 'Successful',
                    onPressed: () {},
                    textColor: Color(0xFF33ADB8),
                    backgroundColor: Colors.white,
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 6,
                      vertical: 0,
                    ),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.2,
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),
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
                                fontSize: 34,
                                color: const Color.fromARGB(255, 163, 163, 163),
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.2,
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              '100',
                              style: TextStyle(
                                fontSize: 34,
                                color: Color(0xFF33ADB8),
                                fontWeight: FontWeight.w800,
                                letterSpacing: -2,
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
            SizedBox(height: 16),

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
                        movementRange: 0,
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
                    iconSize: 40,
                    iconColor: Colors.white,
                    accountType: 'Bank Al Habib',
                    fromToAccountText: 'To',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            //Transaction ID
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF6c7b8b),
                borderRadius: BorderRadius.circular(6),
              ),

              margin: EdgeInsetsDirectional.symmetric(horizontal: 65),
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaction ID:',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: -0.3,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '987122',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 255, 252, 252),
                      letterSpacing: -0.3,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(//purpose date time
              margin: EdgeInsetsDirectional.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(vertical: 12),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(6),
              ),

              child: Column(
                children: [
                  Text(
                    'Purpose of Payment: Others',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF172935),
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(height: 12),
                  DottedBorder(
                    color: const Color.fromRGBO(0, 0, 0, 0.484),
                    strokeWidth: 1,
                    dashPattern: [4, 8], // [dash length, gap length]
                    padding: EdgeInsets.zero,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(0),
                    child: SizedBox(height: 0, width: double.infinity),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Date: 05/01/2026',
                        style: TextStyle(
                          color: Color(0xFF33ADB8),
                          letterSpacing: -0.3,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        height: 25,
                        decoration: BoxDecoration(color: Color(0xFF33ADB8)),
                        width: 2,
                      ),
                      Text(
                        'Time: 09:41:00',
                        style: TextStyle(
                          color: Color(0xFF33ADB8),
                          letterSpacing: -0.3,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(child: SizedBox()),
            Row( //Schedule and next button
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Save',
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    textColor: Color(0xFF33ADB8),
                    icon: Icons.camera_alt_outlined,
                    iconSize: 34,
                    borderColor: const Color(0xFF33ADB8),
                    borderWidth: 2,
                    fontSize: 20,
                    borderRadius: 12,
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomButton(
                    text: 'Share',
                    onPressed: () {},
                    borderWidth: 2,
                    icon: Icons.share_sharp,
                    iconSize: 34,
                    fontSize: 20,
                    borderRadius: 12,
                  ),
                ),
                SizedBox(height: 92,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
