import 'package:EMIY/components/Button/AppIconButton.dart';
import 'package:EMIY/components/Button/IconButtonF.dart';
import 'package:EMIY/components/Button/customBtn.dart';
import 'package:EMIY/components/Form/FormPaiement.dart';
import 'package:EMIY/components/Text/bigText.dart';
import 'package:EMIY/components/Text/bigtitleText.dart';
import 'package:EMIY/components/Text/bigtitleText0.dart';
import 'package:EMIY/components/Widget/categoryComponent.dart';
import 'package:EMIY/components/Text/smallText.dart';
import 'package:EMIY/controller/GeneralController.dart';
import 'package:EMIY/controller/BuyShopController.dart';
import 'package:EMIY/controller/TransactionController.dart';
import 'package:EMIY/controller/cartController.dart';
import 'package:EMIY/styles/colorApp.dart';
import 'package:EMIY/styles/textStyle.dart';
import 'package:EMIY/utils/Services/routing.dart';
import 'package:EMIY/utils/functions/viewFunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DepotView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionController>(
        builder: (_Tcontroller) => Scaffold(
            appBar: AppBar(
              title: Text("Valider Paiement",
                  style: TextStyle(color: ColorsApp.black)),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.white,
              foregroundColor: ColorsApp.black,
              leading: InkWell(
                child: Icon(Icons.close, color: ColorsApp.black),
                onTap: () {
                  return Navigator.pop(context);
                },
              ),
            ),
            body: Stack(children: [
              WebViewWidget(controller: _Tcontroller.controller),
              if (_Tcontroller.isLoad)
                Center(
                  child: CircularProgressIndicator(),
                ),
            ])));
  }
}
