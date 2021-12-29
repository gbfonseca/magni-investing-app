import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../shared/widgets/custom_tab_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../notifiers/dashboard.dart';

class DashboardPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final store = useListenable(DashboardNotifier());
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: SpacingSizes.s24),
          child: ValueListenableBuilder(
              valueListenable: store.selectedId,
              builder: (_, __, ___) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: SpacingSizes.s16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: store.tabItems
                              .map(
                                (item) => CustomTab(
                                  id: item['id'],
                                  title: item['title'],
                                  selectedId: store.selectedId.value,
                                  setSelectedId: store.setSelectedId,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: SpacingSizes.s24),
                        width: MediaQuery.of(context).size.width,
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 400),
                          child: store.renderSection(store.selectedId.value),
                        ),
                      )
                    ],
                  )),
        ),
      )),
    );
  }
}
