import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 715) {
            return desktopView();
          } else {
            return mobileView();
          }
        },
      ),
    );
  }

  Widget desktopView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          backgroundColor: Colors.transparent,
          actions: [
            navHomeBtn(),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              home(),
              home2(),
            ],
          ),
        ),
      ],
    );
  }

  Widget mobileView() {
    return Column();
  }

  Widget home() {
    return Stack(
      children: [
        Container(
          color: Colors.amber,
          width: 100,
          height: 1000,
        )
      ],
    );
  }

  Widget navHomeBtn() {
    return const ElevatedButton(
      onPressed: null,
      child: Text("Home"),
    );
  }

  //TO BE DELETED
  Widget home2() {
    return Stack(
      children: [
        Container(
          color: Colors.green,
          width: 100,
          height: 1000,
        )
      ],
    );
  }
}
