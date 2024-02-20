import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:quick_actions_example/page/new_event_page.dart';
import 'package:quick_actions_example/page/new_message_page.dart';
import 'package:quick_actions_example/page/search_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Quick Actions';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final quickActions = QuickActions();

  @override
  void initState() {
    super.initState();

    quickActions.setShortcutItems([
      ShortcutItem(
        type: 'event',
        localizedTitle: 'New Event',
        icon: 'icon_event',
      ),
      ShortcutItem(
        type: 'message',
        localizedTitle: 'New Message',
        icon: 'icon_message',
      ),
      ShortcutItem(
        type: 'search',
        localizedTitle: 'Search',
        icon: 'icon_search',
      ),
    ]);

    quickActions.initialize((type) {
      if (type == 'event') {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NewEventPage()),
        );
      } else if (type == 'message') {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NewMessagePage()),
        );
      } else if (type == 'search') {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
      );
}
