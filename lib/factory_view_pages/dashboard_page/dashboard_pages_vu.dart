import 'package:chi_trucking_app_factory/custom_widgets/custom_card.dart';
import 'package:chi_trucking_app_factory/custom_widgets/custom_small_elevated_button.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:stacked/stacked.dart';

class DashboardPageVU extends StackedView<DashboardPageVM> {
  @override
  Widget builder(
      BuildContext context, DashboardPageVM viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("sfsf"),
      // ),
      body: Column(
        children: [
          BottomAppBar(
            elevation: 0,
            height: MediaQuery.sizeOf(context).height * .06,
            child: Container(
              height: MediaQuery.sizeOf(context).height * .05,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSmallElevatedButton(
                    buttonText: "Open Bids",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomSmallElevatedButton(
                    buttonText: "Close Bids",
                    onTap: () {},
                  ),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp))
                ],
              ),
            ),
          ),
          Expanded(child: CustomCard()),
        ],
      ),

      bottomNavigationBar: CustomBottomNavigation(),
    );
  }

  @override
  DashboardPageVM viewModelBuilder(BuildContext context) {
    return DashboardPageVM();
  }
}

class CustomBottomNavigation extends StatefulWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
            label: "Dashboard",
            icon: IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                    debugPrint("car");
                    debugPrint("$selectedIndex");
                  });
                },
                icon: Icon(Icons.car_crash_rounded))),
        BottomNavigationBarItem(
          label: "Settings",
          icon: IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                  debugPrint("Settings");
                  debugPrint("$selectedIndex");
                });
              },
              icon: Icon(Icons.settings)),
        ),
      ],
    );
  }
}

class NormalPage {
  Widget vv;
  NormalPage({
    required this.vv,
  });
  Widget widgetttOne = Center(child: Text("widget one"));

  Widget widgetttTwo = Center(child: Text("widget two"));
}

class normal_page extends StatelessWidget {
  const normal_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("normal_page"));
  }
}

class second_normal_page extends StatelessWidget {
  const second_normal_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("second_normal_page"));
  }
}
// class SettingPageVU extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(icon),
//         title: Text("Settings"),
//       ),
//       body: Center(
//         child: Text("Settings Page Content"),
//       ),
//     );
//   }
// }







// import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vm.dart';

// import 'package:chi_trucking_app_factory/factory_view_pages/setting_page/setting_page_vu.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:stacked/stacked.dart';

// class DashboardPageVU extends StackedView<DashboardPageVM> {

//   int? selectedIndex = 0;
//   @override
//   Widget builder(
//       BuildContext context, DashboardPageVM viewModel, Widget? child) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("appbar"),
//         // forceMaterialTransparency: true,
//         // backgroundColor: Colors.transparent,
//         elevation: 0,
//         // bottom: TabBar(
//         //   indicatorColor: Colors.white,
//         //   tabs: [
//         //     Tab(
//         //       child: CustomElevatedButton(
//         //         buttonText: "Open Bids",
//         //       ),
//         //     ),
//         //     Tab(
//         //       child: CustomElevatedButton(
//         //         buttonText: 'Close Bids',
//         //       ),
//         //     ),
//         //   ],
//         // ),
//       ),
//       body: Text("data"),
//       bottomNavigationBar: CustomBottomNavigation(),
//     );
//   }

//   @override
//   DashboardPageVM viewModelBuilder(BuildContext context) {
//     return DashboardPageVM();
//   }
// }

// class CustomBottomNavigation extends StatelessWidget {
//   CustomBottomNavigation({super.key, this.indexx});

//   int? indexx = 0;

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return BottomNavigationBar(
//         selectedItemColor: Colors.amber,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: indexx,
//         items: [
//           BottomNavigationBarItem(
//             label: "Bids",
//             icon: IconButton(
//               onPressed: () {
//                 indexx = 0;
//                 debugPrint("open bids & car bids");
//               },
//               icon: Icon(
//                 Icons.car_crash_sharp,
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Settings",
//             icon: IconButton(
//                 onPressed: () {
//                   indexx = 1;
//                   debugPrint("setting");
//                 },
//                 icon: Icon(
//                   Icons.settings,
//                 )),
//           ),
//         ]);

//     // BottomNavigationBar(
//     //   items: [
//     //     BottomNavigationBarItem(
//     //       icon: GestureDetector(
//     //           onTap: () {
//     //             navigator?.pushReplacement(MaterialPageRoute(
//     //               builder: (context) => DashboardPageVU(),
//     //             ));
//     //             debugPrint("open bids & car bids");
//     //             // vm?.moveToDasboard();
//     //           },
//     //           child: Icon(Icons.car_crash_sharp)),
//     //       label: 'Bids',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: GestureDetector(
//     //           onTap: () {
//     //             debugPrint("setting");

//     //             navigator?.pushReplacement(MaterialPageRoute(
//     //               builder: (context) => SettingPageVU(),
//     //             ));
//     //             // vm?.moveToSetting();
//     //           },
//     //           child: Icon(Icons.settings)),
//     //       label: 'Setting',
//     //     ),
//     //   ],
//     //   // currentIndex: _selectedIndex,
//     //   selectedItemColor: Color(0xff6B4EFF),

//     //   // onTap: _onItemTapped,
//     // );
//   }
// }

// class CustomElevatedButton extends StatelessWidget {
//   CustomElevatedButton({super.key, required this.buttonText, this.onTap});

//   String buttonText;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.white,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
//         ),
//         onPressed: onTap,
//         child: Text(
//           buttonText,
//           style: TextStyle(fontSize: 10),
//         ));
//   }
// }
















































// // import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vm.dart';

// // import 'package:chi_trucking_app_factory/factory_view_pages/setting_page/setting_page_vu.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import 'package:stacked/stacked.dart';

// // class DashboardPageVU extends StackedView<DashboardPageVM> {
// //   @override
// //   Widget builder(
// //       BuildContext context, DashboardPageVM viewModel, Widget? child) {
// //     return DefaultTabController(
// //       length: 2,
// //       child: Scaffold(
// //         // backgroundColor: Colors.white,
// //         appBar: PreferredSize(
// //           preferredSize: Size(MediaQuery.sizeOf(context).width * .2,
// //               MediaQuery.sizeOf(context).height * .07),
// //           child: Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 65),
// //             child: AppBar(
// //               forceMaterialTransparency: true,
// //               // backgroundColor: Colors.transparent,
// //               elevation: 0,
// //               bottom: TabBar(
// //                 indicatorColor: Colors.white,
// //                 tabs: [
// //                   Tab(
// //                     child: CustomElevatedButton(
// //                       buttonText: "Open Bids",
// //                     ),
// //                   ),
// //                   Tab(
// //                     child: CustomElevatedButton(
// //                       buttonText: 'Close Bids',
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //         body: TabBarView(
// //           children: [
// //             // DashboardPageVU(),
// //             Center(child: Text("open bids")),

// //             Center(child: Text("close bids")),
// //           ],
// //         ),
// //         bottomNavigationBar: CustomBottomNavigation(),
// //       ),
// //     );
// //   }

// //   @override
// //   DashboardPageVM viewModelBuilder(BuildContext context) {
// //     return DashboardPageVM();
// //   }
// // }

// // class CustomBottomNavigation extends StatelessWidget {
// //   CustomBottomNavigation({super.key, this.indexx});

// //   int? indexx = 0;

// //   @override
// //   Widget build(
// //     BuildContext context,
// //   ) {
// //     return BottomNavigationBar(
// //         selectedItemColor: Colors.amber,
// //         type: BottomNavigationBarType.fixed,
// //         // currentIndex: ,
// //         items: [
// //           BottomNavigationBarItem(
// //             label: "Bids",
// //             icon: IconButton(
// //               onPressed: () {
// //                 debugPrint("open bids & car bids");
// //                 indexx = 0;
// //               },
// //               icon: Icon(
// //                 Icons.car_crash_sharp,
// //                 color: indexx == 0 ? Colors.amber : Colors.green,
// //               ),
// //             ),
// //           ),
// //           BottomNavigationBarItem(
// //             label: "Settings",
// //             icon: IconButton(
// //                 onPressed: () {
// //                   indexx = 1;
// //                   navigator?.pushReplacement(MaterialPageRoute(
// //                     builder: (context) => SettingPageVU(),
// //                   ));
// //                   debugPrint("setting");
// //                 },
// //                 icon: Icon(
// //                   Icons.settings,
// //                   color: indexx == 1 ? Colors.amber : Colors.green,
// //                 )),
// //           ),
// //         ]);

// //     // BottomNavigationBar(
// //     //   items: [
// //     //     BottomNavigationBarItem(
// //     //       icon: GestureDetector(
// //     //           onTap: () {
// //     //             navigator?.pushReplacement(MaterialPageRoute(
// //     //               builder: (context) => DashboardPageVU(),
// //     //             ));
// //     //             debugPrint("open bids & car bids");
// //     //             // vm?.moveToDasboard();
// //     //           },
// //     //           child: Icon(Icons.car_crash_sharp)),
// //     //       label: 'Bids',
// //     //     ),
// //     //     BottomNavigationBarItem(
// //     //       icon: GestureDetector(
// //     //           onTap: () {
// //     //             debugPrint("setting");

// //     //             navigator?.pushReplacement(MaterialPageRoute(
// //     //               builder: (context) => SettingPageVU(),
// //     //             ));
// //     //             // vm?.moveToSetting();
// //     //           },
// //     //           child: Icon(Icons.settings)),
// //     //       label: 'Setting',
// //     //     ),
// //     //   ],
// //     //   // currentIndex: _selectedIndex,
// //     //   selectedItemColor: Color(0xff6B4EFF),

// //     //   // onTap: _onItemTapped,
// //     // );
// //   }
// // }

// // class CustomElevatedButton extends StatelessWidget {
// //   CustomElevatedButton({super.key, required this.buttonText, this.onTap});

// //   String buttonText;
// //   final void Function()? onTap;

// //   @override
// //   Widget build(BuildContext context) {
// //     return ElevatedButton(
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: Colors.white,
// //           shape:
// //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
// //         ),
// //         onPressed: onTap,
// //         child: Text(
// //           buttonText,
// //           style: TextStyle(fontSize: 10),
// //         ));
// //   }
// // }
