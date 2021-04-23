import 'package:dicepok/helper.dart';
import 'package:dicepok/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {

  Widget diceCircle(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: cBackground,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: cPrimaryDark,
              ),
            ),
            width: 54,
            height: 54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/dice-six-faces-1.svg',
                  height: 32,
                  width: 32,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: cBackground,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: cPrimaryDark,
              ),
            ),
            width: 54,
            height: 54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text(
                //   '0',
                //   style: TextStyle(
                //       fontSize: 20
                //   ),
                // ),
                SvgPicture.asset(
                  'assets/images/dice-six-faces-1.svg',
                  height: 32,
                  width: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Container(
                // child: ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/board.png'),
                      fit: BoxFit.fill
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'You',
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                        Text(
                          'Computer',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: cBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: cPrimaryDark,
                          ),
                        ),
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 4,),
                            SvgPicture.asset('assets/images/chips.svg'),
                            SizedBox(height: 8,),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: cBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: cPrimaryDark,
                          ),
                        ),
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 4,),
                            SvgPicture.asset('assets/images/chips.svg'),
                            SizedBox(height: 8,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  diceCircle(),
                  diceCircle(),
                  diceCircle(),
                  diceCircle(),
                  diceCircle(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total Pool',
                        style: TextStyle(
                          fontSize: 16,
                          color: cDisabled,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: cPrimary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: cPrimaryDark,
                          ),
                        ),
                        width: 80,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 32
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Room Code',
                          style: TextStyle(
                            fontSize: 20,
                            color: cDisabled,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'XXXXXX',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
