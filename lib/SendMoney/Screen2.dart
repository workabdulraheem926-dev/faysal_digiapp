import 'package:faysal_digiapp/widgets/cluade_button_mine.dart';
import 'package:faysal_digiapp/widgets/fav_beni_accounts.dart';
import 'package:faysal_digiapp/widgets/fav_beni_fromAccount.dart';
import 'package:flutter/Material.dart';

class SendMoneyS2 extends StatelessWidget {
  const SendMoneyS2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios, size: 22),
            Text(
              'Send Money',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.all(6),

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 255, 255, 255),
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

            Row(
              //Purpose of payment
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 12,
                      bottom: 18,
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Select Purpose of Payment',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.2,
                          ),
                        ),
                        SizedBox(height: 12),

                        //Payment purpose buttons
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CustomButton(
                                text: "Others",
                                onPressed: () {},
                                fontSize: 12,
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 12,
                                ),
                                height: 28,
                                borderRadius: 6,
                              ),
                              SizedBox(width: 8),
                              CustomButton(
                                text: "Bill Payment",
                                onPressed: () {},
                                fontSize: 12,
                                backgroundColor: Colors.transparent,
                                textColor: const Color.fromARGB(
                                  255,
                                  139,
                                  139,
                                  139,
                                ),
                                borderColor: const Color.fromARGB(
                                  255,
                                  194,
                                  194,
                                  194,
                                ),
                                borderWidth: 1,
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 12,
                                ),
                                height: 28,
                                borderRadius: 6,
                              ),
                              SizedBox(width: 8),
                              CustomButton(
                                text: "Funds transfer",
                                onPressed: () {},
                                fontSize: 12,
                                backgroundColor: Colors.transparent,
                                textColor: const Color.fromARGB(
                                  255,
                                  139,
                                  139,
                                  139,
                                ),
                                borderColor: const Color.fromARGB(
                                  255,
                                  194,
                                  194,
                                  194,
                                ),
                                borderWidth: 1,
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 12,
                                ),
                                height: 28,
                                borderRadius: 6,
                              ),
                              SizedBox(width: 8),
                              CustomButton(
                                text: "Salary payment",
                                onPressed: () {},
                                fontSize: 12,
                                backgroundColor: Colors.transparent,
                                textColor: const Color.fromARGB(
                                  255,
                                  139,
                                  139,
                                  139,
                                ),
                                borderColor: const Color.fromARGB(
                                  255,
                                  194,
                                  194,
                                  194,
                                ),
                                borderWidth: 1,
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 12,
                                ),
                                height: 28,
                                borderRadius: 6,
                              ),
                              SizedBox(width: 8),
                              CustomButton(
                                text: "Subscription fee",
                                onPressed: () {},
                                fontSize: 12,
                                backgroundColor: Colors.transparent,
                                textColor: const Color.fromARGB(
                                  255,
                                  139,
                                  139,
                                  139,
                                ),
                                borderColor: const Color.fromARGB(
                                  255,
                                  194,
                                  194,
                                  194,
                                ),
                                borderWidth: 1,
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 12,
                                ),
                                height: 28,
                                borderRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
                                fontWeight: FontWeight.w800,
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
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'BALANCE:',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 163, 163, 163),
                              ),
                            ),

                            SizedBox(width: 6),
                            Text(
                              'PKR 15,189',
                              style: TextStyle(
                                color: const Color(0xFF33ADB8),
                                fontWeight: FontWeight.w500,
                                letterSpacing: -.5,
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
            //Commens/Purpose of payment
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Commets (Optional)',
                          style: TextStyle(color: const Color(0xFF33ADB8)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Write purpose of Payment',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: -0.2,
                            color: const Color.fromARGB(255, 194, 194, 194),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            //Buttons (Schedule/Next)
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Schedule',
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    textColor: Color(0xFF33ADB8),
                    borderColor: const Color(0xFF33ADB8),
                    borderWidth: 2,
                    fontSize: 20,
                    borderRadius: 12,
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomButton(
                    text: 'Next',
                    onPressed: () {},
                    borderWidth: 2,
                    fontSize: 20,
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            FromAccounts(
              beniName: "Abdul Raheem",
              icon: Icons.import_contacts,
              accountNumber: '034568844',
              iconSize: 35,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
