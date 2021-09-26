import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(
          scrollOffset: _scrollOffset,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(40.0),
        height: 400,
        width: 1000,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(width: 5, color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
            padding: EdgeInsets.all(35.0),
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'Netflix',
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "Hallo,\n\nMijn naam is Bart Westhoff. Ik studeer informatica aan de Hogeschool Rotterdam.\nMomenteel ben ik opzoek naar een meeloopstage.\n\nIk heb op school veel gewerkt met .NET, SQL en Python. In mijn vrije tijd probeer ik nu Flutter en dart te leren. Ik zou graag na mijn studie werkzaam willen zijn bij de tak van App development. Mijn doel in 2021 is om een leerzame stage te hebben en meer te weten kunnen komen over het toepassen van technieken in het werkveld.\n\nVerder vind ik het erg leuk om series te kijken op",
                    // style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                      text: " Netflix ",
                      style: TextStyle(
                        color: Color(0xffE50914),
                        fontFamily: 'Netflix',
                      )),
                  TextSpan(
                    text:
                        "of Disney+. Een potje Call of Duty op zijn tijd is ook erg leuk.",
                    style: TextStyle(fontFamily: 'Disney'),
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
            // Text(
            //   "Hallo,\n\nMijn naam is Bart Westhoff. Ik studeer informatica aan de Hogeschool Rotterdam.\nMomenteel ben ik opzoek naar een meeloopstage.\n\nIk heb op school veel gewerkt met .NET, SQL en Python. In mijn vrije tijd probeer ik nu Flutter en dart te leren. Ik zou graag na mijn studie werkzaam willen zijn bij de tak van App development. Mijn doel in 2021 is om een leerzame stage te hebben en meer te weten kunnen komen over het toepassen van technieken in het werkveld.\n\nVerder vind ik het erg leuk om series te kijken op Netflix of Disney+, een potje Call of Duty (zombies) op zijn tijd is ook erg leuk.",
            //   style: TextStyle(
            //     fontSize: 22,
            //   ),
            // ),
            ),
      ),
    );
  }
}
