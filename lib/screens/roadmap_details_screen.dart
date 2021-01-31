import 'package:flutter/material.dart';

class RoadmapDetailsScreen extends StatelessWidget {
  static const routeName = '/roadmap-details';

  @override
  Widget build(BuildContext context) {
    final roadmapId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$roadmapId'),
      ),
      body: Center(
        child: Text('Roadmap - $roadmapId!'),
      ),
    );
  }
}
