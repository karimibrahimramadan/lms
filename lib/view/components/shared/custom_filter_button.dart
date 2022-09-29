import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customFilter() {
  return IconButton(
    onPressed: () {},
    icon: SvgPicture.asset(
      "assets/icons/filter.svg",
      color: Colors.deepOrange,
    ),
  );
}
