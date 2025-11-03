import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
      padding: EdgeInsets.symmetric(vertical: 22),
      height: 333,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          listCardInfo(
            'assets/icons/icon-phone.png',
            'Voice',
            'You have no quota',
            'Not yet purchased',
            null,
          ),
          SizedBox(height: 24),
          listCardInfo(
            'assets/icons/icon-sms.png',
            'SMS',
            'You have no quota',
            'Not yet purchased',
            null,
          ),
          SizedBox(height: 24),
          listCardInfo(
            'assets/icons/icon-wallet.png',
            'Monetary',
            'You have no monetary balance',
            'Not yet purchased',
            Icons.help_outline_rounded,
          ),
        ],
      ),
    );
  }

  Widget listCardInfo(
    String icon,
    String title,
    String subtitle,
    String status,
    IconData? helpIcon,
  ) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Image.asset(icon, width: 36),
        ),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: boldText13.copyWith(color: primaryTextColor),
                  ),
                  SizedBox(width: 4),
                  Icon(helpIcon, size: 16, color: darkGreyColor),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Text(
                          status,
                          style: mediumText12.copyWith(color: darkGreyColor),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: primaryTextColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                subtitle,
                style: regulerText10.copyWith(color: darkGreyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
