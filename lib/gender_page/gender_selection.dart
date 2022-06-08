import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: GenderSelection(
        isCircular: true,
        selectedGenderIconBackgroundColor: Colors.blueAccent,
        onChanged: (Gender gender) {
          print(gender);
        },
      ),
    );
  }
}
