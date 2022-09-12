import 'package:finance_management/Circles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.drag_handle,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.manage_accounts),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_work_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_sharp), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_alt_outlined), label: ''),
            ]),
        body: Column(
          children: [
            // Hello David & settings
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello Dyson',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      Text('Welcome Back',
                          style: TextStyle(fontSize: 17, color: Colors.grey))
                    ],
                  ),
                  const Icon(Icons.settings)
                ],
              ),
            ),

            // Search Bar

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.black54))),
              ),
            ),

            // Circle Shape
            const SizedBox(height: 25),

            Center(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Circles(
                        amount: '220k',
                        bcolor: Color.fromARGB(197, 165, 213, 210),
                        dispIcon: Icon(
                          Icons.real_estate_agent,
                        ),
                        catego: 'sales',
                      ),
                      Circles(
                        amount: '8.549k',
                        bcolor: Color.fromARGB(230, 169, 209, 239),
                        dispIcon: Icon(Icons.group),
                        catego: 'Customers',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Circles(
                        amount: '905k',
                        bcolor: Color.fromARGB(240, 155, 133, 229),
                        dispIcon: Icon(Icons.payment),
                        catego: 'Revenue',
                      ),
                      Circles(
                        amount: '556k',
                        bcolor: Color.fromARGB(240, 248, 159, 208),
                        dispIcon: Icon(Icons.inventory),
                        catego: 'Products',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
