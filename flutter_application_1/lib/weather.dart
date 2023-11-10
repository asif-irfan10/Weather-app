import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Custom_Widget.dart';
import 'package:flutter_application_1/cards.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather app"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.refresh),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            blendMode: BlendMode.exclusion,
            child: const SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "56°C",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.cloud_sharp,
                        size: 70,
                      ),
                      Text(
                        "Clouds",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Hourly Forcast",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Custom_Widget(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Other Info",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        const Row(
          children: [
            Mycard(
              label: "Thermo",
              icon: Icons.thermostat,
              value: "Higly Temp",
            ),
            Mycard(
              label: "blood",
              icon: Icons.water_drop_outlined,
              value: "Blood ",
            ),
            Mycard(
              label: "Alarm",
              icon: Icons.access_alarms_sharp,
              value: "Alarm",
            )
          ],
        )
      ]),
    );
  }
}
