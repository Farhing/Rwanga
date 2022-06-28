import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String img1 = "asset/images/m1.jpeg";
  String img2 = "asset/images/m2.jpeg";
  String img3 = "asset/images/m3.jpeg";
  String chooseImg = "choose an Image";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 30, horizontal: 5), //?AT
          child: Column(
            children: [
              chooseImg == "Choose an Image"
                  ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        chooseImg,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                    )
                  : Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(img1),
                    ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chooseImg = img1;
                        //  Color = Colors.amber;
                      });
                    },
                    child: Container(
                      height: 115,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.amber),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(img2),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chooseImg = img2;
                        //  Color = Colors.amber;
                      });
                    },
                    child: Container(
                      height: 115,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.amber),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(img3),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chooseImg = img3;
                        //  Color = Colors.amber;
                      });
                    },
                    child: Container(
                        height: 115,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.amber),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(img1), fit: BoxFit.fill))),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
