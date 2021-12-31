import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../constants/sizes.dart';
import '../constants/spacing_sizes.dart';
import 'colors.dart';

class InputDropdown extends StatelessWidget {
  final List<String> items;
  final TextEditingController controller;
  final ValueNotifier<FocusNode> focusNode;
  void Function(String) onChangeText;
  void Function(String) onSelectItem;
  InputDropdown(
      {Key? key,
      required this.items,
      required this.controller,
      required this.focusNode,
      required this.onChangeText,
      required this.onSelectItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TextFormField(
            controller: controller,
            focusNode: focusNode.value,
            onChanged: onChangeText,
            decoration: InputDecoration(
              suffixIcon: ValueListenableBuilder(
                valueListenable: focusNode,
                builder: (_, __, ___) => Icon(
                  focusNode.value.hasFocus
                      ? FontAwesome5.chevron_down
                      : FontAwesome5.chevron_up,
                  size: 14,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                  vertical: SpacingSizes.s8, horizontal: SpacingSizes.s24),
              labelText: 'Código',
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFe2e2e2)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          ValueListenableBuilder(
              valueListenable: focusNode,
              builder: (_, __, ___) => focusNode.value.hasFocus
                  ? AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceInOut,
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: SpacingSizes.s8),
                      child: Material(
                        elevation: 2,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(SpacingSizes.s16),
                          child: SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: items
                                    .map((item) => GestureDetector(
                                          onTap: () {
                                            onSelectItem(item);
                                          },
                                          child: Container(
                                            height: 30,
                                            padding: EdgeInsets.only(
                                                bottom: SpacingSizes.s8),
                                            margin: EdgeInsets.only(
                                                bottom: SpacingSizes.s8),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFe2e2e2),
                                                        width: 1))),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  margin: EdgeInsets.only(
                                                      right: SpacingSizes.s8),
                                                  child: Image.network(
                                                    'https://flagcdn.com/256x192/br.png',
                                                  ),
                                                ),
                                                Text(
                                                  item,
                                                  style: TextStyle(
                                                      color: ColorConstants
                                                          .kFontColor,
                                                      fontSize:
                                                          FontSizeConstants.s16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList()),
                          ),
                        ),
                      ))
                  : SizedBox())
        ],
      );
}
