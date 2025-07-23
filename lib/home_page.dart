import 'package:flutter/material.dart';
import 'package:kumaribank_ui/widgets/Service_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/kumaribanner.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Service Sections
                  ServiceSection(
                    title: "Digital Services",
                    items: [
                      ServiceItem(
                        label: "Open Account",
                        iconPath: "assets/icons/open_account.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Open Demat",
                        iconPath: "assets/icons/open_demat.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Start SIP",
                        iconPath: "assets/icons/start_sip.png",
                        onTap: () {},
                      ),
                    ],
                    onViewAll: () {},
                  ),
                  ServiceSection(
                    title: "Account Services",
                    items: [
                      ServiceItem(
                        label: "Cheque Deposit",
                        iconPath: "assets/icons/cheque_deposit.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Cash Withdrawal",
                        iconPath: "assets/icons/cash_withdrawal.png",
                        onTap: () {},
                      ),
                    ],
                  ),
                  ServiceSection(
                    title: "Others",
                    items: [
                      ServiceItem(
                        label: "UNO Card",
                        iconPath: "assets/icons/uno_card.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Report a Problem",
                        iconPath: "assets/icons/report_a_problem.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "EMI Calculator",
                        iconPath: "assets/icons/emi_calculator.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Fonepay App",
                        iconPath: "assets/icons/fonepay_app.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Branch and ATM",
                        iconPath: "assets/icons/branch_and_atm.png",
                        onTap: () {},
                      ),
                    ],
                    onViewAll: () {},
                  ),
                  ServiceSection(
                    title: "Discount Partners",
                    items: [
                      ServiceItem(
                        label: "Food",
                        iconPath: "assets/icons/food.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Electronics",
                        iconPath: "assets/icons/electronics.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Health",
                        iconPath: "assets/icons/health.png",
                        onTap: () {},
                      ),
                      ServiceItem(
                        label: "Fitness",
                        iconPath: "assets/icons/fitness.png",
                        onTap: () {},
                      ),
                    ],
                    onViewAll: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: colorScheme.secondary,
          shape: CircleBorder(),
          child: Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
            // handle tap
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        shadowColor: Colors.black87,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 8.0,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home
              GestureDetector(
                onTap: () {
                  // handle Home tap
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.home, color: Color(0xFF008DB8), size: 26),
                    SizedBox(height: 4),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 14, color: Color(0xFF008DB8)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40), // space for FAB
              // More
              GestureDetector(
                onTap: () {
                  // handle More tap
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.black,
                      size: 26,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "More",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
