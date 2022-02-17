import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../providers/wallet_provider.dart';
import '../../../utils/services/dio_client.dart';
import '../../../utils/services/wallet_service.dart';
import '../../../utils/ui/snack_bar.dart';

class CreateWalletNotifier extends ChangeNotifier {
  final SnackBarUtil _snackBarUtil = SnackBarUtil();

  ValueNotifier<bool> loading = ValueNotifier(false);

  FormGroup form = FormGroup({
    'name': FormControl(value: '', validators: [Validators.required])
  });

  setLoading(isLoading) {
    loading.value = isLoading;
    loading.notifyListeners();
  }

  onSubmit(validForm, context, formValue) async {
    setLoading(true);
    if (validForm) {
      final _walletService = WalletService(dio);
      final response = await _walletService.addWallet(formValue);
      Provider.of<WalletProvider>(context, listen: false).saveWallet(response);
      setLoading(false);
      _snackBarUtil.showSnackBar(
          context, 'Carteira cadastrada com sucesso!', Colors.green);
      Navigator.of(context).pop();
    } else {
      setLoading(false);

      _snackBarUtil.showSnackBar(
          context, 'Nome da carteira obrigatória.', Colors.red);
    }
    setLoading(false);
  }
}
