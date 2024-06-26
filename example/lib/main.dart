import 'package:flutter/material.dart';
import 'package:stacked_notification_cards/stacked_notification_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NotificationCard> _listOfNotification = [
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 4),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'text with image link',
        subtitle:
            "Hi its my testing <b>Laila</b> <b>https://www.kasandbox.org/programming-images/avatars/spunky-sam.png</b>",
        documentId: 0),
         NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 4),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'KRA - Robot Daily, Weekly and Monthly Tasks',
        subtitle:
            "New Document added by yquinones MEDPLUS NURSING HOME MEDPLUS EMP & FAMILY",
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 4),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'image link',
        subtitle:
            "https://www.kasandbox.org/programming-images/avatars/spunky-sam.png",
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 4),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'text with image link',
        subtitle:
            "Hi its my testing <b>Laila</b> https://www.kasandbox.org/programming-images/avatars/spunky-sam.png",
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 10),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'OakTree 3',
        subtitle:
            'hi all it is nooo https://sample-videos.com/img/Sample-png-image-1mb.png</p>',
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 10),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'OakTree 8',
        // subtitle: 'test <b>https://en.wikipedia.org/wiki/Cat#/media/File:Cat_August_2010-4.jpg</b>',
        subtitle:
            '<b>https://en.wikipedia.org/wiki/Cat#/media/File:Cat_August_2010-4.jpg</b>',
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 30),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'OakTree 4',
        subtitle:
            'We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.We believe in the power of mobile computing.',
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 44),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'OakTree 5',
        subtitle:
            'We believe in the power of mobile computing.\n\n\n\n\n https://upload.wikimedia.org',
        documentId: 0),
    NotificationCard(
        date: DateTime.now().subtract(
          const Duration(minutes: 4),
        ),
        leading: Icon(
          Icons.account_circle,
          size: 48,
        ),
        title: 'text with image link',
        subtitle:
            "Hi its my testing <b>Laila</b> https://www.kasandbox.org/programming-images/avatars/spunky-sam.png",
        documentId: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Stacked Notification Card',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackedNotificationCards(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 2.0,
                )
              ],
              notificationCardTitle: 'Message',
              notificationCards: [..._listOfNotification],
              cardColor: Color(0xFFF1F1F1),
              padding: 16,
              actionTitle: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              showLessAction: Text(
                'Show less',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              onTapClearAll: () {
                setState(() {
                  _listOfNotification.clear();
                });
              },
              clearAllNotificationsAction: Icon(Icons.close),
              clearAllStacked: Text('Clear All'),
              cardClearButton: Text('clear'),
              cardViewButton: Text('view'),
              onTapClearCallback: (index) {
                setState(() {
                  _listOfNotification.removeAt(index);
                });
              },
              onTapViewCallback: (index) {
                showDialog(
                    context: context,
                    builder: ((BuildContext context) {
                      return AlertDialog(
                          iconPadding: EdgeInsets.zero,
                          iconColor: Theme.of(context)
                              .bottomNavigationBarTheme
                              .selectedItemColor,
                          title: Text("test success"),
                          content: Text("data"));
                    }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
