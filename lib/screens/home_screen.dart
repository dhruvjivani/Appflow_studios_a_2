import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('FlexDash'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.all(4.0),
            child: isPortrait
                ? Column(
              children: _buildDashboardCards(constraints.maxWidth, true),
            )
                : Row(
              children: _buildDashboardCards(constraints.maxWidth, false),
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/details'),
        child: Text('View Details'),
      ),
    );
  }

  List<Widget> _buildDashboardCards(double width, bool isPortrait) {
    double cardWidth = isPortrait ? width : (width - 40) / 3;
    return [
      SizedBox(
        width: cardWidth,
        child: DashboardCard(title: 'Tasks', icon: Icons.task_alt),
      ),
      SizedBox(width: isPortrait ? 0 : 10, height: isPortrait ? 10 : 0),
      SizedBox(
        width: cardWidth,
        child: DashboardCard(title: 'Calendar', icon: Icons.calendar_today),
      ),
      SizedBox(width: isPortrait ? 0 : 10, height: isPortrait ? 10 : 0),
      SizedBox(
        width: cardWidth,
        child: DashboardCard(title: 'Notes', icon: Icons.note),
      ),
    ];
  }
}
