import 'package:faysal_digiapp/widgets/cluade_button_mine.dart';
import 'package:flutter/Material.dart';

class SendMoneyS2 extends StatelessWidget {
  const SendMoneyS2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Row(
              children: [
                // Expanded(child: SizedBox()),
                Expanded(
                  child: CustomButton(
                    text: 'Text',
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    textColor: Color(0xFF33ADB8),
                    borderColor: const Color(0xFF33ADB8),
                    borderWidth: 3,
                    height: 55,
                    fontSize: 28,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: CustomButton(
                    text: 'Text',
                    onPressed: () {},
                    height: 55,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
