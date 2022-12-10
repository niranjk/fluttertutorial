

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PlantBannerImage extends StatelessWidget {
  final String url;
  final double height;

  const PlantBannerImage({Key? key, required this.url, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Image image;
    try {
      image = Image.network(url, fit: BoxFit.cover);
    } catch (e){
      if (kDebugMode) {
        print("could not load image $url");
      }
    }
    return Container(
      constraints: BoxConstraints.expand(height: height),
      child: image,
    );
  }
}
