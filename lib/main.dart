import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import 'components/main-content/main_content.dart';
import 'components/sidebar/sidebar.dart';
import 'components/sign-in-sidebar/sign_in_siderbar.dart';
import 'config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Spotify",
        iconTheme: IconThemeData(color: iconColor),
        textTheme: TextTheme(
            bodyText1: TextStyle(
              color: iconColor,
              fontWeight: FontWeight.w700,
              fontSize: 13.5,
            ),
            bodyText2: TextStyle(
                fontSize: 13.5,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w700)),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Size size;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PixelPerfect(
        assetPath: "assets/Images/SS.PNG",
        initOpacity: 0.4,
        scale: 1.25,
        child: Scaffold(
            body: Row(
          children: [
            Sidebar(size: size),
            MainContent(size: size),
            SignInSidebar(size: size)
          ],
        )),
      ),
    );
  }
}
