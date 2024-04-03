import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200, // Adjust the height as needed
            color: Color.fromARGB(
                255, 255, 255, 255), // Example color for the header
            child: Center(
              child: Image.asset(
                'assets/appicon.png', // Replace with your app logo asset path
                height: 100, // Adjust the height as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sample Statistics',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                _buildStatisticsTable(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticsTable() {
    // Example statistics data
    List<Map<String, dynamic>> statistics = [
      {'title': 'Total Users', 'value': '100'},
      {'title': 'Active Users', 'value': '80'},
      {'title': 'Inactive Users', 'value': '20'},
    ];

    return Table(
      border: TableBorder.all(),
      children: statistics.map((stat) {
        return TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(stat['title']),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(stat['value']),
            ),
          ],
        );
      }).toList(),
    );
  }
}
