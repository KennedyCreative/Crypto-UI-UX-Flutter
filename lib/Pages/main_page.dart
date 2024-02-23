import 'package:crypto_ui_ux/Pages/history_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Size get size => MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //app bar with image, name , welcome back
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kennedy Murakami',
                        style: TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipOval(
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
          ),

          //image with credtcard
          SizedBox(height: size.height * .35, width: size.width, child: const Placeholder())

          //text with balance
          //row with green container with porcentage
          //text with value
          ,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 1),
                      ),
                      Text(
                        '\$65,25',
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                      ),
                      Text(
                        'Upcoming Payment',
                        style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_upward_rounded, color: Colors.white),
                        Text(
                          '5.9%',
                          style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //text upcoming payment

          //row with two card
          //card with icon and name about icon
          //text with paymant

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.padding),
                    Text(
                      'PayPal',
                    ),
                    Text('Freelance paypal'),
                    Text('\$48.09'),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.padding),
                    Text('Salay'),
                    Text('Current Balance'),
                    Text('\$29.05'),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(),

          //botton navigator bar
          //home
          //main
          //profile
          //notificationsconst Spacer(),
          Container(
            width: size.width - 80,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.flash_on_sharp),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HistoryPage()));
                  },
                  icon: const Icon(Icons.person),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
