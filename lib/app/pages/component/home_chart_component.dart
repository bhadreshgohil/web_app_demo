import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class HomeChartComponent extends StatelessWidget {
   HomeChartComponent({super.key});


  final List<ChartData> chartData = [
    ChartData('Apr', 50),
    ChartData('May', 80),
    ChartData('Jun', 75),
    ChartData('Jul', 30),
    ChartData('Aug', 70),
  ];


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth < 600 ? constraints.maxWidth : constraints.maxWidth / 1.5,
          child: SfCartesianChart(
              isTransposed: constraints.maxWidth < 600 ? false : true,
            primaryXAxis: CategoryAxis(
            ),
            primaryYAxis: NumericAxis(
              majorGridLines: const MajorGridLines(width: 0), // remove grid lines
              interval: 5,
              minimum: 0,
            ),
            series: <CartesianSeries<ChartData, String>>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.6,
                color: Colors.grey.withValues(alpha: 0.5),
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
          ),
        );
    },);
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x; // Month name
  final double y;
}
