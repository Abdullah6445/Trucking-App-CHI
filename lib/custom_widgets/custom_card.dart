import 'package:chi_trucking_app_factory/factory_view_pages/submit_page/submit_page_vu.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          "appbar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Setting", icon: Icon(Icons.settings)),
      ]),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.sizeOf(context).height * .25,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Shah Factory",
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const Spacer(),
                              const Text(
                                "Min Bid:",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50K",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey.shade300),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Small Truck",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "25 Dec 2023,",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                " 10:50 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Islamabad",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Peshawar",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Place bid",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade50,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                onPressed: () {
                                  CustomDialog().customDialogBox(context);
                                },
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red.shade50,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Hide",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: MediaQuery.sizeOf(context).width * .60,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "03:03:03",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            backgroundColor: Color.fromRGBO(235, 232, 232, 1)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
