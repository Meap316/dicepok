import 'package:dicepok/helper.dart';
import 'package:dicepok/main.dart';
import 'package:dicepok/pages/menupage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  var pageController = PageController(initialPage: 0);
  var currIndex = 0;
  var vis = false;
  
  Widget getPage({int index}){
    var text = 'uwu';

    switch(index){
      case 0:
        text = 'Place Your Bet';
        break;
      case 1:
        text = 'Roll Your Dice';
        break;
      case 2:
        text = 'Raise or Accept Raise';
        break;
      case 3:
        text = 'Compare Your Dice and Win';
        break;
    }
    
    return Column(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [
        Image(
          width: 256,
          height: 256,
          image: AssetImage('assets/images/${index+1}.png'),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 24
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var firstButtonText = 'NEXT';
    var firstButtonFunc = (){
      pageController.nextPage(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    };

    if(currIndex == 0){
      vis = false;
    }
    else if(currIndex>0 && currIndex<3){
      vis = true;
    }
    else{
      vis = false;
      firstButtonFunc = (){
        Navigator.of(context).push(upAnimation(MenuPage()));
      };
      firstButtonText = "START";
    }
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: PageView(
                children: [
                  getPage(index: 0),
                  getPage(index: 1),
                  getPage(index: 2),
                  getPage(index: 3),
                ],
                controller: pageController,
                onPageChanged: (page){
                  setState(() {
                    currIndex = page;
                  });
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: firstButtonFunc,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                      child: Text(firstButtonText, style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: vis ? 1.0 : 0.0,
                    child: ElevatedButton(
                      onPressed: (){
                        pageController.previousPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                        child: Text(
                          'BACK',
                          style: TextStyle(
                              fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DotsIndicator(
                    dotsCount: 4,
                    position: currIndex.toDouble(),
                    decorator: DotsDecorator(
                      color: Color(0xFFD5D5D5), // Inactive color
                      activeColor: cPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}