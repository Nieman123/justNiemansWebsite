import 'package:flutter/material.dart';
import 'package:flutter_improved_scrolling/flutter_improved_scrolling.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:niemanswebsite/links.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'home.dart';
import 'custom_theme.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

void main() async {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage(title: "Welcome to Just Nieman's Website");
        },
      ),
      GoRoute(
        path: '/links',
        builder: (BuildContext context, GoRouterState state) {
          return const LinksPage();
        },
      ),
    ],
    observers: <NavigatorObserver>[observer],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      title: "Just Nieman's Website",
      theme: CustomTheme.darkTheme,
      darkTheme: CustomTheme.darkTheme,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = ScrollController();

  List<Widget> widgetList = [
    //const UnderConstruction(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1000) {
        //Mobile Layout
        return Scaffold(
          body: Stack(children: [
            const PlasmaRenderer(
              type: PlasmaType.infinity,
              particles: 30,
              color: Color.fromARGB(8, 131, 0, 218),
              blur: 0.5,
              size: 1,
              speed: 0.5,
              offset: 0,
              blendMode: BlendMode.plus,
              particleType: ParticleType.circle,
              variation1: 1,
              variation2: 0,
              variation3: 0,
              rotation: 0,
            ),
            ImprovedScrolling(
              scrollController: controller,
              enableKeyboardScrolling: true,
              child: ListView(
                controller: controller,
                children: [widgetList[0]],
              ),
            )
          ]),
        );
      } else {
        return Scaffold(
          body: Stack(children: [
            const PlasmaRenderer(
              type: PlasmaType.infinity,
              particles: 30,
              color: Color.fromARGB(8, 131, 0, 218),
              blur: 0.5,
              size: 1,
              speed: 0.5,
              offset: 0,
              blendMode: BlendMode.plus,
              particleType: ParticleType.circle,
              variation1: 1,
              variation2: 0,
              variation3: 0,
              rotation: 0,
            ),
            ImprovedScrolling(
              scrollController: controller,
              enableKeyboardScrolling: true,
              child: ListView(
                controller: controller,
                children: [widgetList[0]],
              ),
            )
          ]),
        );
      }
    });
  }
}
