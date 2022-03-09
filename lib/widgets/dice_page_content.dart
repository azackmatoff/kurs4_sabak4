import 'package:flutter/material.dart';
import 'package:kurs4_sabak4/constants/colors/app_colors.dart';
import 'package:kurs4_sabak4/widgets/dice_widget.dart';

class DicePageContent extends StatelessWidget {
  final GestureTapCallback onTap;
  final int leftNumber;
  final int rightNumber;

  const DicePageContent({
    @required this.onTap,
    @required this.leftNumber,
    @required this.rightNumber,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          splashColor: AppColors.goldDark,
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DiceWidget(diceNumber: leftNumber),
              const SizedBox(width: 24.0),
              DiceWidget(diceNumber: rightNumber),
            ],
          ),
        ),
      ),
    );
  }
}
