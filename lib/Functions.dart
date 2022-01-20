import 'package:stop_watch_timer/stop_watch_timer.dart';

final StopWatchTimer stopWatchTimer =
    StopWatchTimer(mode: StopWatchMode.countUp);

class Functions {
  void stopWatchStar() {
    stopWatchTimer.onExecute.add(StopWatchExecute.start);
  }

  void stopWatchStop() {
    stopWatchTimer.onExecute.add(StopWatchExecute.stop);
  }

  void stopWatchReset() {
    stopWatchTimer.onExecute.add(StopWatchExecute.reset);
  }
}
