import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YtPage extends StatefulWidget {
  late String name;
  late String rollno;
  late String topic;
  final String url;
  YtPage(
      {Key? key,
      required this.name,
      required this.rollno,
      required this.topic,
      required this.url})
      : super(key: key);
  @override
  _YtPageState createState() => _YtPageState();
}

class _YtPageState extends State<YtPage> {
  late YoutubePlayerController _controller;
  // String purl = url;
  String getVideoID(String url) {
    // url = url.substring(0, 43);
    url = url.replaceAll("https://www.youtube.com/watch?v=", "");
    url = url.replaceAll("https://m.youtube.com/watch?v=", "");
    url = url.replaceAll("https://youtu.be/", "");
    return url;
  }

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
      initialVideoId: getVideoID(widget.url),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        isLive: false,
      ),
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String top = widget.topic;
    String nam = widget.name;
    String roll = widget.rollno;
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Your Upload"),
              centerTitle: true,
            ),
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text("Name: $nam"),
                  subtitle: Text('Roll no: $roll    Topic: $top'),
                ),
                SizedBox(
                  height: 10,
                ),
                player,
              ],
            ),
          );
        });
  }
}
