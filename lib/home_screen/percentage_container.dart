import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/Constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentageContainer extends StatelessWidget {
  final BoxConstraints constraints2;
  final double percentage;
  final int sampleCollected;
  final String headTitle;
  final Color indicatorColor;
  const PercentageContainer(
      {Key? key,
      required this.constraints2,
      required this.percentage,
      required this.sampleCollected,
      required this.headTitle,
      required this.indicatorColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percentageRadius =
        constraints2.maxWidth < 500 ? (constraints2.maxWidth - 40) / 6 : 60;

    return Container(
        width: (constraints2.maxWidth - 40) / 2,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(headTitle, style: defaultText.headline2)),
            Center(
              child: CircularPercentIndicator(
                radius: percentageRadius,
                lineWidth: 6.0,
                animation: true,
                percent: percentage / 100,
                center: Text(
                  "$percentage%",
                  style: defaultText.headline4,
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: indicatorColor,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "$sampleCollected /100 collected",
                style: defaultText.headline3,
              ),
            ),
          ],
        ));
  }
}
