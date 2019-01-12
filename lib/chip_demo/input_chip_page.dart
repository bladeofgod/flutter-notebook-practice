import 'package:flutter/material.dart';

class InputChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: InputChip(
          label: Text('nick brown'),
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('AB'),
          ),
          onPressed: () {
            print('you clicked a chip once!');
          },
          onDeleted: () {},
        ),
      ),
    );
  }
}
