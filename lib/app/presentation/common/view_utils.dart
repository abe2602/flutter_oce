import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget loading() => const Center(child: CircularProgressIndicator());

Widget internetEmptyState(Function tryAgain) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text('Parece que você está sem internet! '
                    '\n Tente conectar-se em alguma rede! ;)'),
              ),
            ),
          ),
          Image.asset(
            'images/internetEmptyState.png',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: RaisedButton(
                  onPressed: () => tryAgain(),
                  child: const Text('Tente novamente!'),
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget favoriteImageAsset(bool isFavorite) => Image.asset(
      isFavorite ? 'images/favorite.png' : 'images/unfavorite.png',
      height: 20,
      width: 20,
      fit: BoxFit.scaleDown,
    );

Widget internetImage(String url) => CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Center(
          child: Image.asset(
        'images/no_image.png',
        fit: BoxFit.cover,
      )),
      fit: BoxFit.cover,
    );

Widget getAppBar() => AppBar(
      backgroundColor: const Color.fromRGBO(139, 157, 195, 10),
      title: Column(
        children: const <Widget>[
          Center(
              child: Text(
            'Citizen Observatory',
            style: TextStyle(color: Colors.black),
          )),
          Center(
              child: Text(
            'of Floods',
            style: TextStyle(color: Colors.black),
          )),
        ],
      ),
    );

Widget getChoseInformationButtonWithIcon(
        BuildContext context,
        String buttonText,
        IconData icon,
        double iconSize,
        Function onTapFunction) =>

    Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / iconSize),
        child: FlatButton(
            color: const Color.fromRGBO(139, 157, 195, 10),
            onPressed: () => onTapFunction(),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  size: iconSize,
                ),
                Flexible(
                    child: Container(child: Center(child: Text(buttonText)))),
              ],
            )),
      ),
    );

Widget getChoseInformationButtonWithImage(
    BuildContext context,
    String buttonText,
    Widget image,
    double iconSize,
    Function onTapFunction) =>

    Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: FlatButton(
            color: const Color.fromRGBO(139, 157, 195, 10),
            onPressed: () => onTapFunction(),
            child: Row(
              children: <Widget>[
                image,
                Flexible(
                    child: Container(child: Center(child: Text(buttonText)))),
              ],
            )),
      ),
    );
