
import 'package:flutter/material.dart';

// Creating custom Styles
class PlantStyles{
  static const _textSizeSmall = 10.0;
  static const _textSizeDefault = 12.0;
  static const _textSizeMedium= 16.0;
  static const _textSizeLarge = 22.0;
  static const _textSizeExtraLarge = 26.0;
  static const horizontalPaddingDefault = 12.0;
  static final Color _textColorStrong = _hexToColor("000000");
  static final Color _textColorDefault = _hexToColor("666666");
  static final Color colorBright= _hexToColor("FFFFFF");
  static final Color colorAccent = _hexToColor("FF0000");
  static const String _fontDefault = "OpenSans";

  static const headerLarge = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeLarge,
    color: Colors.black,
  );

  static const navBarStyle = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeMedium,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );

  static final textDefault = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static final plantTileTitleLight = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeExtraLarge,
    color: _textColorStrong,
  );

  static final plantTileTitleDark = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeExtraLarge,
    color: colorBright,
  );

  static const plantTileSubtitleLight = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeDefault,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const plantTileSubtitleDark = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeDefault,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const plantTileInfoLight = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeDefault,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const plantTileInfoDark = TextStyle(
    fontFamily: _fontDefault,
    fontSize: _textSizeDefault,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static Color _hexToColor(String code){
    return Color(int.parse(code.substring(0,6), radix: 16) +
    0xFF000000);
  }
}