Future<T> delayMinimum<T>({
  required Duration duration,
  required Future<T> Function() onRun,
}) async {
  var startTime = DateTime.now();
  return await onRun().then(
    (value) async {
      var endTime = DateTime.now();
      var runTime = endTime.millisecond - startTime.millisecond;
      var timeDelay = duration.inMilliseconds - runTime;
      if (timeDelay > 0) {
        await Future.delayed(Duration(
          milliseconds: timeDelay,
        ));
      }
      return value;
    },
  );
}
