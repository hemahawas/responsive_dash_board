import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toInt().toString());
    return AspectRatio(aspectRatio: 1, child: PieChart(_getPieChartData()));
  }

  _getPieChartData() => PieChartData(
    sectionsSpace: 0,
    pieTouchData: PieTouchData(
      touchCallback: (event, response) {
        // Handle touch events here
        touchedIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
        setState(() {});
      },
    ),
    sections: [
      PieChartSectionData(
        color: Color(0xff208CC8),
        value: 40,
        showTitle: false,
        radius: touchedIndex == 0 ? 30 : 20,
      ),
      PieChartSectionData(
        color: Color(0xff4EB7F2),
        value: 25,
        showTitle: false,
        radius: touchedIndex == 1 ? 30 : 20,
      ),
      PieChartSectionData(
        color: Color(0xff064061),
        value: 20,
        showTitle: false,
        radius: touchedIndex == 2 ? 30 : 20,
      ),
      PieChartSectionData(
        color: Color(0xffE2DECD),
        value: 22,
        showTitle: false,
        radius: touchedIndex == 3 ? 30 : 20,
      ),
    ],
  );
}
