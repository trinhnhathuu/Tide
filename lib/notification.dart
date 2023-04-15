import 'dart:math';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> requestNotificationPermission() async {
    await firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String> getToken() async {
    final token = await firebaseMessaging.getToken();
    return token!;
  }

  void firebaseInit() {
    FirebaseMessaging.onMessage.listen((message) async {
      await showNotification(message);
      if (kDebugMode) {
        print(message.notification!.title);
        print(message.notification!.body);
      }
    });
  }

  Future<void> initLocationNotification(
      BuildContext context, RemoteMessage message) async {
    final androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    final iosInitializationSettings = const DarwinInitializationSettings();

    final initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: (payload) async {
        if (kDebugMode) {
          print('onDidReceiveBackgroundNotificationResponse');
          print(payload);
        }
      },
    );
  }

  Future<void> showNotification(RemoteMessage message) async {
    final channel = AndroidNotificationChannel(
      Random.secure().nextInt(100000).toString(),
      'Default Channel',
      importance: Importance.max,
      playSound: true,
    );
    final androidNotificationDetails = AndroidNotificationDetails(
        channel.id.toString(), channel.name.toString(),
        channelDescription: 'Tide',
        importance: Importance.high,
        priority: Priority.high,
        playSound: true,
        enableVibration: true,
        styleInformation: const DefaultStyleInformation(true, true),
        ticker: 'ticker');
    const darwinNotificationDetails = DarwinNotificationDetails(
      sound: 'default',
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    _flutterLocalNotificationsPlugin.show(
      0,
      message.notification?.title ?? '',
      message.notification?.body ?? '',
      notificationDetails,
    );
  } 
  
}
