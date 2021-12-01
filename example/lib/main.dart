import 'package:flutter/material.dart';

import 'package:eyro_toast/eyro_toast.dart';

void main() {
  EyroToastSetup.shared.navigatorKey = GlobalKey<NavigatorState>();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // don't forget to set the global navigator key
      // if you're using pure Flutter Toaster
      navigatorKey: EyroToastSetup.shared.navigatorKey,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Toast'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: const Text('NATIVE TOAST'),
            ),
            const Divider(height: 0),
            ListTile(
              title: const Text('Toast Short'),
              subtitle: const Text('Show toast for a short 2 seconds time'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await EyroToast.showToast(
                  text: 'This is short toast',
                  duration: ToastDuration.short,
                );
              },
            ),
            const Divider(height: 0),
            ListTile(
              title: const Text('Toast Long'),
              subtitle: const Text('Show toast for a long 3.5 seconds time'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await EyroToast.showToast(
                  text: 'This is long toast',
                  duration: ToastDuration.long,
                );
              },
            ),
            const Divider(height: 0),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: const Text('PURE FLUTTER TOAST'),
            ),
            const Divider(height: 0),
            ListTile(
              title: const Text('5s Toaster'),
              subtitle: const Text('Show toaster for a long 5 seconds time'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await showToaster(
                  text:
                      'As well as I know, this is a super long..long..and long toast ever shown',
                  duration: const ToastDuration(5000),
                );
              },
            ),
            ListTile(
              title: const Text('Centered Toaster'),
              subtitle: const Text('Show toaster in centered screen'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await showToaster(
                  text: 'This is a centered Toaster',
                  gravity: ToastGravity.center,
                );
              },
            ),
            ListTile(
              title: const Text('Top Red Toaster'),
              subtitle: const Text('Show a red toaster in top screen'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await showToaster(
                  text: 'This is a centered Toaster',
                  gravity: ToastGravity.top,
                  backgroundColor: Colors.red,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
