
import 'package:flutter/material.dart';

class AllSingleChildWidgets extends StatelessWidget {
  const AllSingleChildWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// List of all Single Child Widgets ..
    /// 1. Container
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        /// 2. Padding
        padding: EdgeInsets.all(25),
        /// 3. Center
        child: Center(
          child: Column(
            /// 4. Align
            Align(
              alignment: FractionalOffset(0.2, 0.6),
              child: Container(
                height: 40.0,
                width: 40.0,
                color: Colors.red,
              ),
            ),
            Text(
              data: "Flutter Tutorial",
              style: TextStyle(
                color: Colors.black12,
                letterSpacing: 0.5,
                fontSize: 20,
              ),
              textDirection: TextDirection.ltr,
            ),
            /// 5. FittedBox
            FittedBox(
              fit: BoxFit.fitHeight,
              alignment: Alignment.topCenter,
              child: Text("Fitted Box Widget"),
            ),
            /// 6. AspectRatio
            AspectRatio(
              aspectRatio: 2.0,
              child: Text( "Aspect Ratio Widget"),
            ),
            /// 7. ConstrainedBox
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 20.0,
                minHeight: 20.0
              ),
              child: Text("Constrained Box Widget"),
            ),
            /// 8. Baseline
            Baseline(
              baseline: 2.0,
              baselineType: TextBaseline.alphabetic,
              child: Text("Baseline Widget"),
            ),
            /// 9. FractionallySizedBox
            FractionallySizedBox(
              widthFactor: 2.0,
              heightFactor: 2.0,
              child: Text("FractionallySizedBox Widget"),
            ),
            /// 10. IntrinsicHeight
            IntrinsicHeight(
              child: Text("IntrinsicHeight Widget"),
            ),
            /// 11. IntrinsicWidth
            IntrinsicWidth(
              stepWidth: 2.0,
              stepHeight: 4.0,
              child: Text("IntrinsicWidth Widget"),
            ),
            /// 12. LimitedBox
            LimitedBox(
              maxWidth: 2.0,
              maxHeight: 4.0,
              child: Text("LimitedBox Widget"),
            ),
            /// 13. Offstage
            Offstage(
              child: Text("Offstage Widget"),
            ),
            /// 14. OverflowBox
            OverflowBox(
              maxWidth: 2.0,
              maxHeight: 4.0,
              child: Text("OverflowBox Widget"),
            ),
            /// 15. SizedBox
            SizedBox(
              width: 4.0,
              height: 10.0,
              child: Text("SizedBox Widget"),
            ),
            /// 16. SizedOverflowBox
            SizedOverflowBox(
              size: Size.fromWidth(24.0),
              child: Text("SizedOverflowBox Widget"),
            ),
            /// 17. Transform
            Transform(
              transform: Matrix4.inverted,
              child: Text("Transform Widget"),
            ),
            /// 18. CustomSingleChildLayout
            CustomSingleChildLayout(
              delegate: SingleChildLayoutDelegate(),
              child: Text("CustomSingleChildLayout Widget"),
            ),
          ),
        )
    );
  }
}
