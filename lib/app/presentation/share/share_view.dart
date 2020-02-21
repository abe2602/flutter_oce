import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class ShareView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShareViewState();

  static Widget create(BuildContext context) => ShareView();
}

class _ShareViewState extends State<ShareView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: getAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _getChoseInformationButton('ALTURA DA ENCHENTE NAS RUAS', () {}),
              _getChoseInformationButton(
                  'ALTURA DA ÁGUA NO LEITO DO RIO', () {}),
              _getChoseInformationButton('INTENSIDADE DA CHUVA', () {}),
              _getChoseInformationButton('ENVIAR FOTO', () {}),
            ],
          ),
        ),
      );

  Widget _getChoseInformationButton(
          String buttonText, Function onTapFunction) =>
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: FlatButton(
            color: const Color.fromRGBO(139, 157, 195, 10),
            onPressed: () => onTapFunction,
            child: Container(child: Center(child: Text(buttonText))),
          ),
        ),
      );
}
