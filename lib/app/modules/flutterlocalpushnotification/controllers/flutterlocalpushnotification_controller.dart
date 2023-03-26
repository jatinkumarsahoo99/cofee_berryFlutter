import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
class FlutterlocalpushnotificationController extends GetxController {
  //TODO: Implement FlutterlocalpushnotificationController
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  var scheduledNotificationDateTime;
  final count = 0.obs;
  var scheduledDateNew;
  @override
  void onInit() {
    WidgetsFlutterBinding.ensureInitialized();
    tz.initializeTimeZones();
    scheduledDateNew = convertToTZDateTime(DateTime.now().add(Duration(seconds: 10)),"Asia/Kolkata");
    var initializationSettingsAndroid =
    AndroidInitializationSettings('playstore');
    var initializationSettingsIOS = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin!.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
    super.onInit();
  }
  Future onSelectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    // Navigate to a specific screen when the notification is tapped
    // Navigator.pushNamed(context, '/notification');
  }
  Future<void> scheduleNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.high, priority: Priority.high, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    // Set the date and time for the notification
    var scheduledDate = DateTime.now().add(Duration(seconds: 1));
    scheduledNotificationDateTime = scheduledDate;

    // Schedule the notification to appear at the specified date and time
    await flutterLocalNotificationsPlugin!.zonedSchedule(
        0,
        'Title',
        'Body',
        convertToTZDateTime(scheduledDate,"Asia/Kolkata"),
        platformChannelSpecifics,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'item x',
        matchDateTimeComponents: DateTimeComponents.time);
  }
  tz.TZDateTime convertToTZDateTime(DateTime dateTime, String timeZoneName) {
    final location = tz.getLocation(timeZoneName);
    return tz.TZDateTime.from(dateTime, location);
  }
  void stopNotifications() async {
    flutterLocalNotificationsPlugin!.cancelAll();
  }



  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
