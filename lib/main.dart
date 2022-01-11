import 'package:flutter/material.dart';
import 'package:chat_app/screens/conversations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Messenger Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Conversations(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "<https://randomuser.me/api/portraits/men/11.jpg>"),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFe9eaec),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    cursorColor: Color(0xFF000000),
                    controller: _searchController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                        hintText: "Search",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _stories(),
              ],
            ),
          )),
    );
  }

  List storyList = [
    {
      "name": "Novac",
      "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Derick",
      "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Mevis",
      "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Emannual",
      "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Gracy",
      "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Robert",
      "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
      "isOnline": false,
      "hasStory": true,
    }
  ];

  List conversationList = [
    {
      "name": "Novac",
      "imageUrl": "<https://randomuser.me/api/portraits/men/31.jpg>",
      "isOnline": true,
      "hasStory": true,
      "message": "Where are you?",
      "time": "5:00 pm"
    },
    {
      "name": "Derick",
      "imageUrl": "<https://randomuser.me/api/portraits/men/81.jpg>",
      "isOnline": false,
      "hasStory": false,
      "message": "It's good!!",
      "time": "7:00 am"
    },
    {
      "name": "Mevis",
      "imageUrl": "<https://randomuser.me/api/portraits/women/49.jpg>",
      "isOnline": true,
      "hasStory": false,
      "message": "I love You too!",
      "time": "6:50 am"
    },
    {
      "name": "Emannual",
      "imageUrl": "<https://randomuser.me/api/portraits/men/35.jpg>",
      "isOnline": true,
      "hasStory": true,
      "message": "Got to go!! Bye!!",
      "time": "yesterday"
    },
    {
      "name": "Gracy",
      "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
      "isOnline": false,
      "hasStory": false,
      "message": "Sorry, I forgot!",
      "time": "2nd Feb"
    },
    {
      "name": "Robert",
      "imageUrl": "<https://randomuser.me/api/portraits/men/36.jpg>",
      "isOnline": false,
      "hasStory": true,
      "message": "No, I won't go!",
      "time": "28th Jan"
    },
    {
      "name": "Lucy",
      "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
      "isOnline": false,
      "hasStory": false,
      "message": "Hahahahahaha",
      "time": "25th Jan"
    },
    {
      "name": "Emma",
      "imageUrl": "<https://randomuser.me/api/portraits/women/56.jpg>",
      "isOnline": false,
      "hasStory": false,
      "message": "Been a while!",
      "time": "15th Jan"
    }
  ];

  _stories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                        'Your Story',
                        overflow: TextOverflow.ellipsis,
                      )),
                )
              ],
            ),
          ),
          Row(
              children: List.generate(storyList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: Stack(
                          children: <Widget>[
                            storyList[index]['hasStory']
                                ? Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.blueAccent, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              storyList[index]['imageUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                                : Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          storyList[index]['imageUrl']),
                                      fit: BoxFit.cover)),
                            ),
                            storyList[index]['isOnline']
                                ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Color(0xFFFFFFFF), width: 3)),
                              ),
                            )
                                : Container()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 75,
                        child: Align(
                            child: Text(
                              storyList[index]['name'],
                              overflow: TextOverflow.ellipsis,
                            )),
                      )
                    ],
                  ),
                );
              }))
        ],
      ),
    );
  }
}
