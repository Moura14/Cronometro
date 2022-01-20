import 'package:cronometro_flutter/Buttons_Screens.dart';
import 'package:cronometro_flutter/Functions.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class HomeScreens extends StatefulWidget {
  //const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  Functions functions = Functions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cronômetro"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
              stream: stopWatchTimer.rawTime,
              initialData: 0,
              builder: (context, snapshot) {
                final value = snapshot.data;
                final displayTime = StopWatchTimer.getDisplayTime(value);
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        displayTime,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonsScreens(
                      "Start", functions.stopWatchStar, Colors.green),
                  ButtonsScreens(
                      "Stop", functions.stopWatchStop, Colors.redAccent),
                  ButtonsScreens(
                      "Reset", functions.stopWatchReset, Colors.blueAccent),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
