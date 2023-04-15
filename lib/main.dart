import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tide/provider/google_login_provider.dart';
import 'Routes.dart';
import 'package:provider/provider.dart';
import 'notification.dart';
import 'views/home_page.dart';


Future<void> main() async {
  // NotificationServices notificationServices = NotificationServices();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // notificationServices.firebaseInit();
  // notificationServices.getToken().then((value) => {
  //   print("Token: "),
  //   print(value),
  // });
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  NotificationServices notificationServices = NotificationServices();
  void initState() {
    super.initState();
    notificationServices.firebaseInit();
    notificationServices.getToken().then((value) => {
      print("Token: "),
      print(value),
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Routes.routes,
        home:  const HomePage(),
      ),
    );
  }
}
