import 'package:flutter/material.dart';
import 'package:prova_final/model/profile.dart';
import 'package:prova_final/model/search.dart';

import 'movies.dart';

class HomeButterPopCorn extends StatefulWidget {
  const HomeButterPopCorn({super.key});

  @override
  State<HomeButterPopCorn> createState() => _HomeButterPopCornState();
}

class _HomeButterPopCornState extends State<HomeButterPopCorn> {
  var _itemSelecionado = 0;
  final _subtelas = const [Movies(), Search(), Profile()];

  void _alterarBottomNav(int idx) {
    setState(() {
      _itemSelecionado = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _subtelas[_itemSelecionado],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelecionado,
          unselectedLabelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
          selectedItemColor: Colors.black,
          backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                  color: Colors.black,
                ),
                label: 'Filmes'),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black),
              label: 'Pesquisar',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black), label: 'Perfil')
          ],
          selectedLabelStyle: const TextStyle(fontSize: 15),
          onTap: _alterarBottomNav,
        ),
      ),
    );
  }
}
