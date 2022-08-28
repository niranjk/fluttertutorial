
import 'package:flutter/material.dart';

class MySingleChildWidget extends StatelessWidget {
  const MySingleChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0, color: Color(0xFFFFFFFFFF),
          ),
          left: BorderSide(
            width: 1.0, color: Color(0xFFFFFFFFFF),
          ),
          right: BorderSide(
            width: 1.0, color: Color(0xFFFF000000),
          ),
          bottom: BorderSide(
            width: 1.0, color: Color(0xFFFF000000),
          ),
        ),
      ),
      child: Container(
        /// Padding : used to arrange its child widget by the given padding.
        /// Padding is provided by EdgeInsets class
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 2.0
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1.0, color: Color(0xFFFFDFDFDF),
            ),
            left: BorderSide(
              width: 1.0, color: Color(0xFFFFDFDFDF),
            ),
            right: BorderSide(
              width: 1.0, color: Color(0xFFFF7F7F7F),
            ),
            bottom: BorderSide(
              width: 1.0, color: Color(0xFFFF7F7F7F),
            ),
          ),
          color: Colors.grey,
        ),
          /// Align : align its child widget within itself using the value of alignment property.
          /// The value of the alignment property can be provided by FractionalOffset class.
          /// The FractionalOffset class specifies the offsets in terms of a distance from the top left.
          /// Example :
          /// FractionalOffset(1.0, 0.0) represents the top right.
          /// FractionalOffset(0.0, 1.0) represents the bottom left.
        child: Align(
          alignment: FractionalOffset(0.2, 0.6),
          child: Text(
            'Ok',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),,
        )
      ),
    );
  }
}
