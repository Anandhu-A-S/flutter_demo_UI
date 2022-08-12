import "package:flutter/material.dart";

import 'package:flutter_demo/home_screen/overview_text.dart';
import 'package:flutter_demo/home_screen/percentage_container.dart';

import 'package:flutter_demo/utils/Constants.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white,
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraintsL) {
          return ListView(
            children: [
              Container(
                width: constraintsL.maxWidth,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ),
              Container(
                  width: constraintsL.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Dash", style: defaultText.headline1)),
                  )),
              Container(
                width: constraintsL.maxWidth,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Overview", style: defaultText.headline2)),
                    const SizedBox(height: 10),
                    Column(children: [
                      const SizedBox(
                        height: 5,
                      ),

                      //number Row
                      const SizedBox(
                        height: 5,
                      ),
                      OverviewText(
                          labelText: "Survey Agent",
                          secText: "Ramu.k.k",
                          constraints1: constraintsL),
                      const SizedBox(
                        height: 5,
                      ),
                      OverviewText(
                          labelText: "Constituency",
                          secText: "Alamkode",
                          constraints1: constraintsL),
                      const SizedBox(
                        height: 5,
                      ),
                      OverviewText(
                          labelText: "Panchayat",
                          secText: "Melanbra",
                          constraints1: constraintsL),
                      const SizedBox(
                        height: 5,
                      ),
                      OverviewText(
                          labelText: "Last sync",
                          secText: "8:00pm,8/1/2020",
                          constraints1: constraintsL),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            width: (constraintsL.maxWidth - 45) / 3,
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("900/1000  ",
                                    style: defaultText.headline4)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            width: (constraintsL.maxWidth - 45) / 2,
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Samples collected",
                                    style: defaultText.bodyText1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 17),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 50,
                        animation: true,
                        lineHeight: 7.0,
                        animationDuration: 2500,
                        percent: 0.6,
                        //center: Text("80.0%"),
                        barRadius: const Radius.circular(30),
                        progressColor: colorBlue,
                      ),
                    ])
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Sample quota", style: defaultText.headline2)),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Gender", style: defaultText.headline3)),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PercentageContainer(
                    constraints2: constraintsL,
                    percentage: 68.0,
                    sampleCollected: 50,
                    headTitle: "Male",
                    indicatorColor: colorBlue,
                  ),
                  PercentageContainer(
                    constraints2: constraintsL,
                    percentage: 100.0,
                    sampleCollected: 100,
                    headTitle: "Female",
                    indicatorColor: colorGreen,
                  ),
                ],
              ),
              Row(
                children: [
                  PercentageContainer(
                    constraints2: constraintsL,
                    percentage: 68.0,
                    sampleCollected: 55,
                    headTitle: "Other",
                    indicatorColor: colorGreen,
                  ),
                ],
              ),
            ],
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: colorBlue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
