// import 'package:flutter/material.dart';
// import 'package:portfolio/components/info_card.dart';
// import 'package:portfolio/home.dart';
// import 'package:portfolio/services/rive_models.dart';

// import 'side_menu.dart';

// class SideBar extends StatefulWidget {
//   final HomeState homeState;
//   const SideBar({super.key, required this.homeState});

//   @override
//   State<SideBar> createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> {
//   Menu selectedSideMenu = RiveModels.bottomNavItems.first;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         width: 288,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 16, 16, 18),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30),
//           ),
//         ),
//         child: DefaultTextStyle(
//           style: const TextStyle(color: Colors.white),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const InfoCard(
//                 name: "Tamer El Zein",
//                 bio: "Software Engineer",
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
//                 child: Text(
//                   "Browse".toUpperCase(),
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleMedium!
//                       .copyWith(color: Colors.white70),
//                 ),
//               ),
//               ...RiveModels.bottomNavItems
//                   .map((menu) => SideMenu(
//                         menu: menu,
//                         selectedMenu: selectedSideMenu,
//                         press: () {
//                           setState(() {
//                             selectedSideMenu = menu;
//                             widget.homeState.updateSelectedBtmNav(menu);
//                           });
//                         },
//                       ))
//                   .toList(),
//               Padding(
//                 padding: const EdgeInsets.only(left: 24, top: 40, bottom: 16),
//                 child: Text(
//                   "Contact".toUpperCase(),
//                   style: Theme.of(context)
//                       .textTheme
//                       .titleMedium!
//                       .copyWith(color: Colors.white70),
//                 ),
//               ),
//               ...RiveModels.sidebarMenus2
//                   .map((menu) => SideMenu(
//                         menu: menu,
//                         selectedMenu: selectedSideMenu,
//                         press: () {
//                           setState(() {
//                             selectedSideMenu = menu;
//                           });
//                         },
//                       ))
//                   .toList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
