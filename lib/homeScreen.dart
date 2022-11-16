import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  final Color PrimaryColor = Colors.white;
  final Color iconColor = Colors.black;
  final Color bgColor = const Color(0xffa9E0E3);
  final Color circleColor = Colors.green;

  final List<Map> articledata = [
    {
      "title": "How to seem like you always have your shot Together",
      "author": "Jonny Depp",
      "time": "4 min"
    },
    {
      "title": "Does Dry is January Actually Improve Your Health?",
      "author": "Sunny Leone",
      "time": "12 min"
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "kathrina",
      "time": "6 min"
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "vasu",
      "time": "9 min"
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "sasi",
      "time": "23 min"
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Anoop Menon",
      "time": "4 min"
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Mohanlal",
      "time": "5 min"
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "Mammooty",
      "time": "41 min"
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "alan",
      "time": "14 min"
    }
  ];

  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: PrimaryColor,
            title: Text(
              "Catagories",
              style: TextStyle(color: iconColor, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: Icon(
              Icons.category,
              color: iconColor,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(
                  Icons.search,
                  color: iconColor,
                ),
              )
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: iconColor,
                indicatorColor: iconColor,
                unselectedLabelColor: iconColor,
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("For You"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Design"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Beauty"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Education"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Entertainment"),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ListView.separated(
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return _buildArtItem(index);
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 16,
                    ),
                itemCount: articledata.length)
          ]),
        ));
  }

  Widget _buildArtItem(int index) {
    Map article = articledata[index];
    return Container(
      color: Colors.white,
      child: Stack(children: [
        Container(
          width: 90,
          height: 90,
          color: bgColor,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                height: 100,
                color: Colors.blue,
                width: 80,
                child: Image(
                  image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/000/201/215/original/vector-beach-vacations-background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    article['title'],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: iconColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: circleColor,
                        ),
                      ),
                      WidgetSpan(
                          child: SizedBox(
                        width: 5,
                      )),
                      TextSpan(
                          text: article['author'],
                          style: TextStyle(fontSize: 16)),
                      WidgetSpan(
                          child: SizedBox(
                        width: 25,
                      )),
                      TextSpan(
                        text: article['time'],
                      )
                    ]),
                    style: TextStyle(height: 2),
                  )
                ],
              ))
            ],
          ),
        )
      ]),
    );
  }
}
