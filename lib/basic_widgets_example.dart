
import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          /// Platform Independent Widgets
          ///
          /// Text Widget is used to display a piece of string.
          Text(data : "Hello Niranjan!", style: TextStyle(fontWeight: FontWeight.bold),),

          /// Text.rich accepts the child of type TextSpan to specify
          /// the string with different style.
          /// TextSpan  widget is recursive in nature and it accepts TextSpan as it children
          Text.rich(textSpan : TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Hello ", style: TextStyle( fontStyle: FontStyle.italic)),
              TextSpan(text: "Niranjan ! ", style: TextStyle( fontStyle: FontStyle.bold)),
            ]
          )),
          Text(
            data : "Khatri",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            maxLines: 10, // max lines to show
            overflow: TextSelectionOverlay(), // how overflow is handled
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
          ),

          /// Image Widget displays image in the app
          /// Image - Generic Image Loader using ImageProvider
          Image(
              image: ImageProvider(),
            width: 20.0,
            height: 20.0,
            /// how to align the image within its bounds
            alignment: AlignmentGeometryTween(
            ),
          ),
          /// Image.asset - Load image from flutter project's assets
          Image.asset(name: 'images/a_dot_burr.jpeg'),
          /// Image.file - Load image from system folder
          Image.file(name: 'images/a_dot_burr.jpeg'),
          /// Image.memory - Load image from memory
          Image.memory(name: 'images/a_dot_burr.jpeg'),
          /// Image.network - Load image from network
          Image.network(name: 'images/a_dot_burr.jpeg'),


          /// Icon Widget is used to display a glyph from a font described in IconData class.
          Icon(icon:Icons.email),
        ],
    );
  }
}
