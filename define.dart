import 'package:flutter/material.dart';
import 'package:meal/private_widgets.dart';

class DefineApp extends StatelessWidget {
  const DefineApp({super.key});

  @override
  Widget build(BuildContext context) {
    //screen info
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ceteris Paribus Meaning",
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/ceteris-paribus.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: SizedBox(
                  height: screenWidth / 8,
                  child: TextButton(
                    onPressed: () {},
                    child: OurText("Like", screenWidth / 25),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent),
                  ),
                )),
                Expanded(
                    child: SizedBox(
                  height: screenWidth / 8,
                  child: TextButton(
                    onPressed: () {},
                    child: OurText("Comment", screenWidth / 25),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  ),
                )),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Economics 101: Ceteris Paribus",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 20),
                  ),
                  Row(
                    children: [
                      OurText("MicroEconomics", screenWidth / 25),
                      Spacer(),
                      OurText("Think!", screenWidth / 25),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenHeight / 100),
                    child: OurText(
                        "Ceteris paribus, literally ‘holding other things constant,’ is a Latin phrase that is commonly translated into English as 'all else being equal.'"
                        "A dominant assumption in mainstream economic thinking, it acts as a shorthand indication of the effect of one economic variable on another, provided all other variables remain the same (constant). In the scientific sense, if we claim that one variable influences another, ceteris paribus, we are essentially controlling for the effects of some other variables.",
                        screenWidth / 25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
