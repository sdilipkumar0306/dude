import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'drawer_data.dart';

class AppMenuUi extends StatefulWidget {
  final Widget body;
  final Widget? title;
  final List<Widget>? actions;
  const AppMenuUi({this.title, this.actions, required this.body, Key? key}) : super(key: key);

  @override
  _AppMenuUiState createState() => _AppMenuUiState();
}

class _AppMenuUiState extends State<AppMenuUi> with SingleTickerProviderStateMixin {
  // Animation Controller
  late AnimationController _animationController;
  DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
  }

  _toggleAnimation() {
    _animationController.isDismissed ? _animationController.forward() : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;
    return SafeArea(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          double slide = rightSlide * _animationController.value;
          double scale = 1 - (_animationController.value * 0.3);
          return Stack(
            children: [
              Scaffold(
                backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
                body: const DrawerData(),
              ),
              Transform(
                transform: Matrix4.identity()
                  ..translate(slide)
                  ..scale(scale),
                alignment: Alignment.center,
                child: Card(
                  margin: const EdgeInsets.all(0),
                  elevation: _animationController.isDismissed ? 0 : 5,
                  shadowColor: Colors.white,
                  child: Scaffold(
                    key: _key,
                    onDrawerChanged: (isOpened) {
                      _toggleAnimation();
                    },
                    drawerDragStartBehavior: drawerDragStartBehavior,
                    drawer: Container(
                      width: 30, height: 50,
                      // color: Colors.red,
                      color: Colors.transparent,
                    ),
                    drawerScrimColor: Colors.transparent,
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      elevation: 0,
                      // leading: IconButton(
                      //   onPressed: () async {
                      //     // print("aaaaaaaaaaaaaaaa");
                      //     await _toggleAnimation();
                      //     print(_key.currentState?.isDrawerOpen);
                      //     if (_key.currentState?.isDrawerOpen ?? false) {
                      //       Navigator.pop(context);
                      //     } else {
                      //       // _key.currentState?.openDrawer();

                      //     }
                      //   },
                      //   icon: AnimatedIcon(
                      //     icon: AnimatedIcons.menu_close,
                      //     progress: _animationController,
                      //   ),
                      // ),
                      title: widget.title,
                      actions: const [],
                    ),
                    body: widget.body,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
