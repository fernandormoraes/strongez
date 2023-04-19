import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:strongez/app/design/atoms/atomic_colors.dart';

class WeekChart extends StatefulWidget {
  WeekChart({super.key});

  List<Color> get availableColors => const <Color>[
        AtomicColors.darkBlue,
        AtomicColors.darkestBlue,
        AtomicColors.lightGrey,
        AtomicColors.lightestGrey,
        AtomicColors.lowBlue,
        AtomicColors.lowestBlue,
      ];

  final Color barBackgroundColor = AtomicColors.lightGrey.withOpacity(0.2);
  final Color barColor = AtomicColors.lowBlue;
  final Color touchedBarColor = AtomicColors.darkBlue;

  @override
  State<StatefulWidget> createState() => WeekChartState();
}

class WeekChartState extends State<WeekChart> {
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Tempo de treino por dia',
                style: TextStyle(
                  color: AtomicColors.darkBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BarChart(
                    mainBarData(),
                    swapAnimationDuration: animDuration,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: widget.touchedBarColor)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 143, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 120, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 0, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 0, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 0, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 0, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 0, isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = 'Segunda';
                break;
              case 1:
                weekDay = 'Terça';
                break;
              case 2:
                weekDay = 'Quarta';
                break;
              case 3:
                weekDay = 'Quinta';
                break;
              case 4:
                weekDay = 'Sexta';
                break;
              case 5:
                weekDay = 'Sabado';
                break;
              case 6:
                weekDay = 'Domingo';
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: TextStyle(
                    color: widget.touchedBarColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: AtomicColors.lowBlue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('S', style: style);
        break;
      case 1:
        text = const Text('T', style: style);
        break;
      case 2:
        text = const Text('Q', style: style);
        break;
      case 3:
        text = const Text('Q', style: style);
        break;
      case 4:
        text = const Text('S', style: style);
        break;
      case 5:
        text = const Text('S', style: style);
        break;
      case 6:
        text = const Text('D', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
}
