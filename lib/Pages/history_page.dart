import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'History',
          style: TextStyle(color: Colors.white),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //container
            //text
            //prices

            //month
            //week
            //day

            //grafic with months

            //divider

            //history inside row with  a buttonicon
            //Container with icon, row>text/text, prices gradiente color of background
          ],
        ),
      ),
    );
  }
}
