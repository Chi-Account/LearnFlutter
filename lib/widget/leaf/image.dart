import 'package:flutter/material.dart';

class LearnImage extends StatelessWidget {
  const LearnImage({Key? key}) : super(key: key);

  final String path = 'assets/images/stardew_valley.jpg';
  final String path2 = 'assets/images/stardew_valley_small.jpg';
  final String url =
      'http://e.hiphotos.baidu.com/image/pic/item/4e4a20a4462309f7e41f5cfe760e0cf3d6cad6ee.jpg';

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(path2),
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      colorBlendMode: BlendMode.modulate,
      fit: BoxFit.none,
      alignment: AlignmentDirectional.center,
      repeat: ImageRepeat.repeat,
    );
  }

  Widget loadImageFromAsset() {
    Image image;
    image = Image(
      image: AssetImage(path),
    );
    image = Image.asset(path);
    return image;
  }

  Widget loadImageFromNetwork() {
    Image image;
    image = Image(
      image: NetworkImage(url),
    );
    image = Image.network(url);
    return image;
  }
}
