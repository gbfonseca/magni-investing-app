import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/subtitle_widget.dart';
import '../../../utils/ui/title_widget.dart';
import 'widgets/signupform_widget.dart';

class SignupPage extends HookWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: SpacingSizes.s40,
                  top: SpacingSizes.s24,
                  right: SpacingSizes.s40,
                  bottom: 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TitleWidget(text: 'Cadastre-se,'),
                  Container(
                    width: 223,
                    child: SubTitleWidget(
                        text: 'Para continuar registre-se para ter acesso.'),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Expanded(
                    flex: 1,
                    child: SignUpForm(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
