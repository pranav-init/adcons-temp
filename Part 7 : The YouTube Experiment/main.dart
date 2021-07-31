import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

/* the keys present at the end of URLs ( key = <KEY_ID> ) is a key taken from Google Cloud Platform
To get an ID, the procedure is, sign in to Google Cloud Platform, search for YouTube API v3, and go to "Credentials" in the side navbar*/

void main() => runApp(MyApp());

final color = const Color(0xFF302F2F);
final lightDarkGrey = const Color(0xFF4B4A4A);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final oneSec = const Duration(seconds: 1);
  Channel channelP;
  Channel channelT;
  bool onGoingRequest = false;
  bool isDataAvailable = false;

  void fetchPost() async {
    onGoingRequest = true;
    final responseP = await http.get(Uri.parse(
        'https://www.googleapis.com/youtube/v3/channels/?part=snippet%2CcontentDetails%2Cstatistics%20&forUsername=AshChanchlani&key=AIzaSyD7QaRB7LXQ2QDC3ULw9lVGsiUxEKu8I7M'));
    final responseT = await http.get(Uri.parse(
        'https://www.googleapis.com/youtube/v3/channels/?part=snippet%2CcontentDetails%2Cstatistics%20&forUsername=MarquesBrownlee&key=AIzaSyD7QaRB7LXQ2QDC3ULw9lVGsiUxEKu8I7M'));
    if (responseP.statusCode == 200 && responseT.statusCode == 200) {
      setState(() {
        channelP = Channel.fromJSON(json.decode(responseP.body));
        channelT = Channel.fromJSON(json.decode(responseT.body));
        isDataAvailable = true;
        onGoingRequest = false;
      });
    } else {
      //there was a catch statement here which I deleted
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchPost();
    // Timer.periodic(oneSec, (Timer t) {
    //   fetchPost();
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightDarkGrey,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: Center(
        child: isDataAvailable
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      ClipRRect(
                        child: Image.network(
                          channelP.imgUrl,
                          width: 100,
                          height: 100,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        child: Text(
                          '${channelP.name}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GT',
                              fontSize: 25.0),
                        ),
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Subs',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                          SizedBox(height: 10),
                          Text(channelP.subscriberCount.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: <Widget>[
                          Text('Views',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                          SizedBox(height: 10),
                          Text(channelP.viewCount.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: <Widget>[
                          Text('Videos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                          SizedBox(height: 10),
                          Text(channelP.videoCount.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GT',
                                  fontSize: 20.0)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    child: Text('VS',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'GT',
                            fontSize: 40.0)),
                    padding: EdgeInsets.all(30.0),
                  ),
                  ClipRRect(
                    child: Image.network(
                      channelT.imgUrl,
                      width: 100,
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  Padding(
                    child: Text('${channelT.name}',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GT',
                            fontSize: 25.0)),
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  ),
                  Text('Subscriber Count : ${channelT.subscriberCount}',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GT',
                          fontSize: 20.0)),
                ],
              )
            : CircularProgressIndicator(),
        /*this is an alternate widget to show loading if the data is not ready yet*/
      ),
    );
  }
}

class Channel {
  String name;
  String imgUrl;
  int subscriberCount;
  int viewCount;
  int videoCount;

  Channel(this.name, this.imgUrl, this.subscriberCount, this.viewCount,
      this.videoCount);

  factory Channel.fromJSON(Map<String, dynamic> map) {
    // print(map['items'][0]['snippet']['title']);
    return Channel(
        map['items'][0]['snippet']['title'],
        map['items'][0]['snippet']['thumbnails']['high']['url'],
        int.parse(map['items'][0]['statistics']['subscriberCount']),
        int.parse(map['items'][0]['statistics']['viewCount']),
        int.parse(map['items'][0]['statistics']['videoCount']));
  }
}
