import 'package:flutter/material.dart';
import 'package:app_usage/app_usage.dart';
import 'package:fl_chart/fl_chart.dart';

class AppUsageScreen extends StatefulWidget {
  @override
  _AppUsageScreenState createState() => _AppUsageScreenState();
}

class _AppUsageScreenState extends State<AppUsageScreen> {
  List<AppUsageInfo> _infos = [];
  bool _showGraph = false;

  @override
  void initState() {
    super.initState();
  }

  void getUsageStats() async {
    try {
      DateTime endDate = DateTime.now();
      DateTime startDate = endDate.subtract(Duration(hours: 1));
      List<AppUsageInfo> infoList =
          await AppUsage().getAppUsage(startDate, endDate);
      setState(() => _infos = infoList);
    } on AppUsageException catch (exception) {
      print(exception);
    }
  }

  void generateGraph() {
    setState(() {
      _showGraph = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Usage Analysis'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _infos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_infos[index].appName),
                    trailing: Text(_infos[index].usage.toString()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: generateGraph,
                child: Text('Generate Graph'),
              ),
            ),
            if (_showGraph)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: _infos.isNotEmpty ? _infos.map((info) => info.usage.inMinutes.toDouble()).reduce((a, b) => a > b ? a : b) * 1.28 : 1,
                      groupsSpace: 12,
                      titlesData: FlTitlesData(
                        bottomTitles: SideTitles(
                          showTitles: true,
                          rotateAngle: 45,
                          margin: 10,
                          getTitles: (double value) {
                            if (value.toInt() < _infos.length) {
                              return _infos[value.toInt()].appName;
                            }
                            return '';
                          },
                          getTextStyles: (double value) => TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                        leftTitles: SideTitles(showTitles: true),
                      ),
                      borderData: FlBorderData(show: false),
                      barGroups: _infos.map((info) {
                        return BarChartGroupData(
                          x: _infos.indexOf(info),
                          barRods: [
                            BarChartRodData(
                              y: info.usage.inMinutes.toDouble(),
                              colors: [Colors.blue],
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),

                ),
              ),
              // SizedBox(height: 80,)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getUsageStats,
          child: Icon(Icons.refresh),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/generate-data');
              },
              child: Text(
                'Addiction Detection',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
