import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock/constants/theme_data.dart';
import 'package:flutter_clock/data.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alarm',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          Expanded(
            child: ListView(
                children: alarms.map<Widget>((alarm) {
              return Container(
                margin: const EdgeInsets.only(bottom: 32),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.withOpacity(0.4),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(4, 4))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Office',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Switch(
                            value: true,
                            activeColor: Colors.white,
                            onChanged: (bool value) {})
                      ],
                    ),
                    Text(
                      'Mon-Fri',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '07:00 AM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 36,
                        )
                      ],
                    )
                  ],
                ),
              );
            }).followedBy([
              DottedBorder(
                strokeWidth: 3,
                color: CustomColors.clockOutline,
                borderType: BorderType.RRect,
                radius: Radius.circular(24),
                dashPattern: [5, 4],
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: CustomColors.colorBG,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.alarm,
                          size: 40,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Add Alarm',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]).toList()),
          )
        ],
      ),
    );
  }
}
