import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFilterButton extends StatelessWidget {
  const CustomFilterButton({
    Key? key,
    required this.popupMenuItems,
  }) : super(key: key);

  final List<PopupMenuItem> popupMenuItems;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: SvgPicture.asset(
        "assets/icons/filter.svg",
        color: Colors.deepOrange,
      ),
      itemBuilder: (context) => [
        ...popupMenuItems,
      ],
    );
  }
}
