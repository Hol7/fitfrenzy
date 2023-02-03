import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ActualityPage extends StatelessWidget {
  const ActualityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(24.0),


          child: Text('Fitfrenzy timeline $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}


