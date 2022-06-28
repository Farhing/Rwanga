import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.detailsfruit})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String detailsfruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    height: 197,
                    width: 230,
                    child: Image.asset(imageUrl),
                    //Placeholder()مه‌ بكارئینا بو هندێ كو جهی ببینین ل سه‌ر دیزاینێ حه‌تا پاش رسمێ خو بكه‌ینه‌ تێدا یه‌عنی بدانینه‌ جهێ وی
                  ),
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.amber[800],
                        ),
                      ),
                    ),
                  ),
                ]),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      detailsfruit,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
