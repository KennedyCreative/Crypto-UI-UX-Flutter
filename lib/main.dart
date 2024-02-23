import 'package:crypto_ui_ux/Pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const CryptoPage(),
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
        )),
  ));
}

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  Size get size => MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image space
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(color: Colors.green.shade400, borderRadius: BorderRadius.circular(500)),
              ),
            ),

            //text
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
              child: RichText(
                text: TextSpan(text: 'Mastering Your \n', style: const TextStyle(fontSize: 26, letterSpacing: 1.5), children: [
                  TextSpan(text: 'Crypto', style: TextStyle(color: Colors.green.shade400, fontSize: 26, letterSpacing: 1.5)),
                  const TextSpan(text: ' Wallet', style: TextStyle(fontSize: 26, letterSpacing: 1.5)),
                ]),
              ),
            ),

            //sub text
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10, left: 20),
              child: Text(
                'Maximizing Efficiency in Buying, Storing, Sending, Exchanging, Earning and Expanse Tracking',
                style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1.5),
              ),
            ),

            const Spacer(),
            //elevationButton
            Center(
              child: SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                      // primary: Colors.green.shade400, // Use 'primary' instead of 'backgroundColor'
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainPage()));
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.5),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
