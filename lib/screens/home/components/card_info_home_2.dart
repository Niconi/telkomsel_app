import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
      height: 333,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/icons/icon-phone.png', width: 36),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        'Voice',
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                    ),
                    Text(
                      'You have no quota',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
