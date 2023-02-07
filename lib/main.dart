import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '/constants.dart';
import '/home_screen.dart';
import 'package:sizer/sizer.dart';

import 'utils/scroll_behaviour.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      debugPrint(100.w.toString());
      if (100.w < 1000) {
        setDefaultValuesForMobile();
      }
      return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: 'My Profile',
        theme: ThemeData(
          inputDecorationTheme: kDefaultInputDecorationTheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        
        home: NeumorphicApp(themeMode: ThemeMode.light, home: HomeScreen()),
      );
    });
  }
}
