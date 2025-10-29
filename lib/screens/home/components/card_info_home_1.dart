import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telkomsel_app/themes.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    CircularPercentIndicator circularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 20.0,
        lineWidth: 7.0,
        percent: percent,
        animation: true,
        backgroundColor: lightGreyColor,
        progressColor: orangeColor,
        circularStrokeCap: CircularStrokeCap.round,
      );
    }

    Widget infoCardList_2() {
      return Row(
        children: [
          Expanded(flex: 1, child: circularPercent(0.9)),
          SizedBox(width: 12),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Multimedia',
                      style: boldText14.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      '9.2 GB ',
                      style: semiBoldText13.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      '/10 GB Left',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: primaryTextColor,
                      size: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/icons/icon-warning.png'),
                      width: 12,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '9.2 GB / 10 GB is expiring tomorrow',
                      style: mediumText10.copyWith(color: brownColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget infoCardList_1() {
      return Row(
        children: [
          Expanded(flex: 1, child: circularPercent(0)),
          SizedBox(width: 12),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Internet',
                      style: boldText14.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      'Not yet purchased',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: primaryTextColor,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  'You have no quota',
                  style: regulerText10.copyWith(color: primaryTextColor),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      height: 333,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: greyCardColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp 0',
                      style: extraBoldText26.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      'Active until 30 Aug 2024',
                      style: mediumText12.copyWith(color: darkGreyColor),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: redButtonColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            child: Text(
                              'Buy Package',
                              style: mediumText12.copyWith(color: whiteColor),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Top Up',
                          style: mediumText12.copyWith(color: blueColor),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Send Gift',
                          style: mediumText12.copyWith(color: blueColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
              child: Column(
                children: [infoCardList_1(), Spacer(), infoCardList_2()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
