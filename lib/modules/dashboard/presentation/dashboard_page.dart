import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_store.dart';
import '../../../shared/widgets/custom_tab_widget.dart';
import '../../../shared/widgets/header_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../stores/dashboard_store.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'})
      : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final DashboardStore store = DashboardStore();

  @override
  Widget build(BuildContext context) {
    final _authStore = Provider.of<AuthStore>(context);
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(SpacingSizes.s24),
          child: Column(
            children: [
              Observer(
                builder: (_) => Header(
                  name: "${_authStore.user.name} ${_authStore.user.lastName}",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: SpacingSizes.s16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: store.tabItems
                      .map((item) => Observer(
                            builder: (_) => CustomTab(
                              id: item['id'],
                              title: item['title'],
                              selectedId: store.selectedId,
                              setSelectedId: store.setSelectedId,
                            ),
                          ))
                      .toList(),
                ),
              ),
              Observer(
                  builder: (_) => Container(
                        margin: EdgeInsets.only(top: SpacingSizes.s24),
                        width: MediaQuery.of(context).size.width,
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 400),
                          child: store.renderSection(store.selectedId),
                        ),
                      ))
            ],
          ),
        ),
      )),
    );
  }
}
