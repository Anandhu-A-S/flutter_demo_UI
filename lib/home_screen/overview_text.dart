import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/Constants.dart';

class OverviewText extends StatelessWidget {
  final String labelText;
  final String secText;
  final BoxConstraints constraints1;
  const OverviewText(
      {Key? key,
      required this.labelText,
      required this.secText,
      required this.constraints1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topRight,
          width: (constraints1.maxWidth - 45) / 3,
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(labelText, style: defaultText.headline3)),
        ),
        Container(
          alignment: Alignment.topRight,
          width: (constraints1.maxWidth - 45) / 1.5,
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(secText, style: defaultText.headline2)),
        ),
      ],
    );
  }
}
