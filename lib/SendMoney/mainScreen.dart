import 'package:faysal_digiapp/SendMoney/Screen2.dart';
import 'package:faysal_digiapp/SendMoney/Screen3.dart';
import 'package:faysal_digiapp/widgets/fav_ben_payees.dart';
import 'package:faysal_digiapp/widgets/fav_beni.dart';
import 'package:flutter/material.dart';
import 'package:faysal_digiapp/widgets/fav_beni_accounts.dart';
// import 'Widgets/fav_beni.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0,
        title: Container(
          padding: EdgeInsets.only(right: 16, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined, size: 18),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Send Money',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.info_outlined,
                        size: 32,
                        color: Color(0xFF33ADB8),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.home_outlined,
                        size: 32,
                        color: Color(0xFF33ADB8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favourites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.6,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:
                    [
                          FavBeni(
                            beniName: 'Bank AL Habib',
                            image: AssetImage('assets/images/bahl.png'),
                            onTap:(){},
                          ),
                          FavBeni(
                            beniName: 'Meezan Bank',
                            image: AssetImage('assets/images/meezan.png'),
                          ),
                          FavBeni(
                            beniName: 'Habib Bank Limited',
                            image: AssetImage('assets/images/hbl.png'),
                          ),
                          FavBeni(
                            beniName: 'United Bank Limited',
                            image: AssetImage('assets/images/ubl.png'),
                          ),
                          FavBeni(
                            beniName: 'Allied Bank Limited',
                            image: AssetImage('assets/images/allied.png'),
                          ),
                        ]
                        .expand(
                          (widget) => [
                            widget,
                            const SizedBox(
                              width: 12,
                            ), // This line adds the space automatically!
                          ],
                        )
                        .toList(),
              ),
            ),

            SizedBox(height: 16),
            Text(
              'My Account(s)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.6,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                MyAccounts(
                  beniName: 'Current Account',
                  image: AssetImage('assets/images/faysal_icon.png'),
                  accountNumber: '3554706000007829',
                ),
                SizedBox(width: 12),
                MyAccounts(
                  beniName: 'Current Account',
                  image: AssetImage('assets/images/faysal_icon.png'),
                  accountNumber: '3554706000007905',
                ),
              ],
            ),

            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Payees',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.6,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.search_sharp,
                      size: 32,
                      color: Color(0xFF33ADB8),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children:
                      [
                            MyPayee(
                              beniAccount: 'PK10BAHL3554301000007905',
                              beniBank: 'Bank AL Habib',
                              image: AssetImage('assets/images/bahl.png'),
                            ),
                            MyPayee(
                              beniAccount: '0341 2829384',
                              beniBank: 'EasyPaisa Bank',
                              image: AssetImage('assets/images/easypaisa.png'),
                            ),
                            MyPayee(
                              beniAccount: 'PK10ALD3554301000007905',
                              beniBank: 'Allied Bank Limited',
                              image: AssetImage('assets/images/allied.png'),
                            ),
                            MyPayee(
                              beniAccount: 'PK10MZN3554301000007905',
                              beniBank: 'Meezan Bank Limited',
                              image: AssetImage('assets/images/meezan.png'),
                            ),
                            MyPayee(
                              beniAccount: 'PK10FAYS3554301000007905',
                              beniBank: 'Faysal Bank Limited',
                              image: AssetImage(
                                'assets/images/faysal_logo.png',
                              ),
                            ),
                          ]
                          .expand(
                            (widget) => [
                              widget,
                              const SizedBox(
                                height: 8,
                              ), // This line adds the space automatically!
                            ],
                          )
                          .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
