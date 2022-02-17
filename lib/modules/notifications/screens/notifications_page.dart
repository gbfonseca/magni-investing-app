import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../notifiers/notifications.dart';

class NotificationsPage extends HookWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationsNotifier = useListenable(NotificationsNotifier());
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SpacingSizes.s24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notificações',
                style: TextStyle(
                  color: ColorConstants.kFontColor,
                  fontSize: FontSizeConstants.s32,
                  fontWeight: FontWeight.w800,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: notificationsNotifier.notifications,
                builder: (context, notifications, _) => Container(
                  height: MediaQuery.of(context).size.height - 301,
                  child: ListView.builder(
                      itemCount:
                          notificationsNotifier.notifications.value.length,
                      itemBuilder: (context, index) {
                        final notification =
                            notificationsNotifier.notifications.value[index];
                        return Dismissible(
                          direction: DismissDirection.endToStart,
                          key: ValueKey<String>(notification['id'].toString()),
                          background: Container(
                            margin: EdgeInsets.only(top: SpacingSizes.s32),
                            padding: EdgeInsets.symmetric(
                                horizontal: SpacingSizes.s16),
                            decoration: BoxDecoration(
                                color: Colors.red.shade400,
                                borderRadius: BorderRadius.circular(10)),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.cancel,
                                color: ColorConstants.kBackgroundColor,
                              ),
                            ),
                          ),
                          onDismissed: (direction) {
                            notificationsNotifier.removeNotification(index);
                          },
                          child: _renderNotification(
                              notification['title'].toString(),
                              notification['message'].toString()),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _renderNotification(String title, String message) => Container(
      margin: EdgeInsets.only(top: SpacingSizes.s32),
      padding: EdgeInsets.all(SpacingSizes.s8),
      height: 66,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: SpacingSizes.s16),
            child: Image.asset(
              'lib/assets/images/income/income.png',
              width: 24,
              height: 24,
            ),
          ),
          SizedBox(
            width: SpacingSizes.s16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorConstants.kFontColor,
                  fontSize: FontSizeConstants.s16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: ColorConstants.kFontColor,
                  fontSize: FontSizeConstants.s16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          )
        ],
      ),
    );
