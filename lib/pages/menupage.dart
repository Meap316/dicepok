import 'package:dicepok/helper.dart';
import 'package:dicepok/pages/gameboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: cPrimary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(54.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                  'assets/images/4.png',
                  height: 187,
                  width: 187,
              ),
              Text(
                'WHY USE 50 WHEN YOU CAN USE 5',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(leftAnimation(GameBoard()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('VS COMPUTER', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(leftAnimation(VsPlayerPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('VS PLAYER', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('EXIT', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VsPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: cPrimary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(54.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/4.png',
                height: 187,
                width: 187,
              ),
              Text(
                'WHY USE 50 WHEN YOU CAN USE 5',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('JOIN ROOM', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('CREATE ROOM', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Text('BACK', style: TextStyle(
                        fontSize: 16
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

