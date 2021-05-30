import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "About Event",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: new Text(
                  'About Event',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[],
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: TabBar(
                    // controller: ,
                    unselectedLabelColor: Colors.redAccent,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    tabs: [
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.redAccent, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("CONSORTIUM-21"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.redAccent, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("SPANDANA-21"),
                          ),
                        ),
                      ),
                    ]),
              ),
              body: TabBarView(children: [
                Consortium_Section,
                Spandana_Section,
                //Icon(Icons.games),w
              ]),
            )));
  }
} // ignore: non_constant_identifier_names

final Consortium_Section = new Container(
    padding: const EdgeInsets.all(20.0),
    child: RichText(
      text: TextSpan(
        //style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'CONSORTIUM',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          TextSpan(
            text:
                """ is the National level student technical symposium, where the every student can present their innovative skills. Every year CONSORTIUM invites the participants from various Engineering colleges all over the country to the various competitions and trainings.\nThis is an amazing opportunity to showcase student ideas on an unique and massive platform in the form of well integrated and intriguing presentation. It strives to explore the inquisitiveness of young minds by giving their incredulous ideas a definitive direction.\nAny queries please contact event coordinator:\nDr. D Shobha Rani.\nProfessor of Electrical Electronics Engineering\nE-Mail id: d.shobharani@iare.ac.in\n\n""",
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, fontFamily: 'Nunito'),
          ),
        ],
      ),
    ));

final Spandana_Section = new Container(
    padding: const EdgeInsets.all(20.0),
    child: RichText(
      text: TextSpan(
        //style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text:
                """One of the most anxiously awaited occasions each year is the """,
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, fontFamily: 'Nunito'),
          ),
          TextSpan(
            text: 'SPANDANA-2021 ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          TextSpan(
            text:
                """– Institute Annual Day. Great excitement and joyful activities are visible all around. This is the day where one discovers as the colors of cultural feast unfold! The prize-winners in academics, games, sports and those who are participating in the cultural programme to be presented on that day are especially elated.\nDr. D Shobha Rani.\nProfessor of Electrical Electronics Engineering.\nE-Mail id: d.shobharani@iare.ac.in\n""",
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, fontFamily: 'Nunito'),
          ),
        ],
      ),
    ));
