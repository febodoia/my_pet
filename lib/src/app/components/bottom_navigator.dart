import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/view/home/home_view.dart';
import 'package:my_pet/src/view/meus_pets/meus_pets_view.dart';
import 'package:my_pet/src/view/perfil_user/perfil_user_view.dart';

class BottomNavigationApp extends StatefulWidget {
  _BottomNavigationAppState createState() => _BottomNavigationAppState();
}

class _BottomNavigationAppState extends State<BottomNavigationApp> {
  _BottomNavigationAppState();

  int currentTab = 0; // Index of currently opened tab.
  MyHomePage pageOne =
      new MyHomePage(); // Page that corresponds with the first tab.
  MeusPets pageTwo =
      new MeusPets(); // Page that corresponds with the second tab.
  PerfilUser pageThree =
      new PerfilUser(); // Page that corresponds with the third tab.
  List<Widget> pages; // List
  Widget currentPage; // Page that is open at the moment.

  @override
  void initState() {
    super.initState();
    pages = [pageOne, pageTwo, pageThree]; // Populate our pages list.
    currentPage = pageOne;
  }

  @override
  void dispose() {
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int numTab) {
          setState(() {
            currentTab = numTab; // Updating our currentTab with the tab that is pressed [See 43].
            currentPage = pages[numTab];
            print(currentPage);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant),
              title: Text('Home'),
              activeIcon: Icon(Icons.assistant, color: ColorsTheme.corPadrao)),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            title: Text('Meus Pets'),
            activeIcon: Icon(Icons.assistant, color: ColorsTheme.corPadrao),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Perfil'),
              activeIcon: Icon(Icons.person, color: ColorsTheme.corPadrao)),
        ],
      );
    }
  }
