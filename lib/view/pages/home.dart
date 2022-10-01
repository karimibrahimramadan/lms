import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lms/view/pages/home_page.dart';
import 'package:lms/view/pages/news_page.dart';
import 'package:lms/view/pages/settings.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = const [
    HomePage(),
    NewsPage(),
    SettingsPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: GNav(
          onTabChange: _onTap,
          selectedIndex: _currentIndex,
          gap: 12,
          padding: const EdgeInsets.all(40),
          activeColor: Colors.deepOrange,
          curve: Curves.easeIn,
          tabs: [
            GButton(
              icon: Icons.home,
              leading: SvgPicture.asset("assets/icons/home.svg"),
              text: "Home",
            ),
            const GButton(
              icon: Icons.newspaper_outlined,
              iconColor: Colors.deepOrange,
              text: "News",
            ),
            GButton(
              icon: Icons.settings,
              leading: SvgPicture.asset("assets/icons/settings.svg"),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   final List<Widget> _pages = const [
//     HomePage(),
//     NewsPage(),
//     SettingsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocBuilder<HomeCubit, HomeState>(
//         builder: (context, state) {
//           HomeCubit homeCubit = HomeCubit.get(context);
//           return Scaffold(
//             body: _pages[homeCubit.currentIndex],
//             bottomNavigationBar: GNav(
//               onTabChange: (int index) {
//                 homeCubit.onTap(index);
//               },
//               selectedIndex: homeCubit.currentIndex,
//               gap: 12,
//               padding: const EdgeInsets.all(40),
//               activeColor: Colors.deepOrange,
//               curve: Curves.easeIn,
//               tabs: const [
//                 GButton(
//                   icon: Icons.home,
//                   text: "Home",
//                 ),
//                 GButton(
//                   icon: Icons.fiber_new_sharp,
//                   text: "News",
//                 ),
//                 GButton(
//                   icon: Icons.settings,
//                   text: "Settings",
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
