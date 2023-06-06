import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color.fromARGB(255, 99, 99, 99),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: _height / 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: const AssetImage('chamar bd'),
                        radius: _height / 10,
                      ),
                      SizedBox(
                        height: _height / 50,
                      ),
                      const Text(
                        'Nome do usuário',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _height / 2.6),
                child: Container(
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
