import 'package:flutter/material.dart';
import 'package:scitmain/color.dart';

class DrawHeader extends StatelessWidget {
  const DrawHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightPurple,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'SCIT PSU SURAT',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Faculty of Science and Industrial Technology',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14,
                ),
          ),
          Text('Prince of Songkla University'),
          Text('Surat Thani Campus')
        ],
      ),
    );
  }
}
