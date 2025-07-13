import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: AspectRatio(aspectRatio: 1, child: PieChart(_getPieChartData())),
    );
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
