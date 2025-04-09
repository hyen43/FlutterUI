import 'package:flutter/material.dart';
import 'package:my_app/widgets/Button.dart';
import 'package:my_app/widgets/currenctCard.dart';

void main() {
  runApp(App());
}

// 우리 앱의 root widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                (Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey,lina",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(color: Colors.white.withAlpha(125), fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                )),
                const SizedBox(height: 10),
                Text("Total Balance", style: TextStyle(color: Colors.white, fontSize: 30)),
                const SizedBox(height: 5),
                Text(
                  "\$10,000",
                  style: TextStyle(color: Colors.white, fontSize: 44, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: "Transfer", bgColor: Colors.amber, textColor: Colors.black),
                    Button(text: "Request", bgColor: Colors.black, textColor: Colors.white),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'viewAll',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '3878',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 0,
                ),
                CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BIT',
                  amount: '66778',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 1,
                ),

                CurrencyCard(
                  name: 'Dollor',
                  code: 'USD',
                  amount: '66778',
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
