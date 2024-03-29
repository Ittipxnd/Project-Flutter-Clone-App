import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Flutter_Clone_App/config/palette.dart';
import 'package:Flutter_Clone_App/data/data.dart';
import 'package:Flutter_Clone_App/widgets/post_button.dart';
import 'package:Flutter_Clone_App/widgets/watch_bar.dart';
import 'package:Flutter_Clone_App/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchScreen extends StatefulWidget {
  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  String videoUrl1 = 'https://www.youtube.com/watch?v=j5-yKhDd64s';
  late YoutubePlayerController _controller1;

  String videoUrl2 = 'https://www.youtube.com/watch?v=E1ZVSFfCk9g';
  late YoutubePlayerController _controller2;

  String videoUrl3 = 'https://www.youtube.com/watch?v=kgqomHejqtU&t';
  late YoutubePlayerController _controller3;

  @override
  void initState() {
    super.initState();
    _controller1 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl1)!);
    _controller2 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl2)!);
    _controller3 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl3)!);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _trackingScrollController.dispose();
    super.dispose();
  }

  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile:
              _HomeScreenMobile(scrollController: _trackingScrollController),
          desktop:
              _HomeScreenDesktop(scrollController: _trackingScrollController),
          tablet:
              _HomeScreenMobile(scrollController: _trackingScrollController),
        ),
      ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _HomeScreenMobile({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: const TextStyle(
              color: Palette.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 30.0,
              onPressed: () => print('Search'),
            ),
            CircleButton(
              icon: MdiIcons.facebookMessenger,
              iconSize: 30.0,
              onPressed: () => print('Messenger'),
            ),
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                ProfileAvatar(
                  imageUrl:
                      'https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                SizedBox(height: 3, width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 3.0),
                    Text(
                      'ฟังเพลงเพราะๆ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text('9h'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 3),
          sliver: SliverToBoxAdapter(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(
                  'https://www.youtube.com/watch?v=ApXoWvfEYVU',
                )!,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up,
                                  size: 15.0, color: Colors.blue),
                              Text(
                                '548',
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '387 comments • 124 share',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Divider(
                color: Colors.grey,
                thickness: 1.0,
                height: 2.0,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 50),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        PostButton(
                          icon: Icon(
                            MdiIcons.thumbUpOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Like',
                          onTap: () => print('Like'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.commentOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Comment',
                          onTap: () => print('Comment'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.shareOutline,
                            color: Colors.grey[600],
                            size: 25.0,
                          ),
                          label: 'Share',
                          onTap: () => print('Share'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                ProfileAvatar(
                  imageUrl:
                      'https://images.unsplash.com/photo-1516873240891-4bf014598ab4?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                SizedBox(height: 3, width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 3.0),
                    Text(
                      'DJ JoJo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text('20h'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 3),
          sliver: SliverToBoxAdapter(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(
                  'https://www.youtube.com/watch?v=UceaB4D0jpo',
                )!,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up,
                                  size: 15.0, color: Colors.blue),
                              Text(
                                '2k',
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '5k comments • 1k share',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Divider(
                color: Colors.grey,
                thickness: 1.0,
                height: 2.0,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 50),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        PostButton(
                          icon: Icon(
                            MdiIcons.thumbUpOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Like',
                          onTap: () => print('Like'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.commentOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Comment',
                          onTap: () => print('Comment'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.shareOutline,
                            color: Colors.grey[600],
                            size: 25.0,
                          ),
                          label: 'Share',
                          onTap: () => print('Share'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: <Widget>[
                ProfileAvatar(
                  imageUrl:
                      'https://yt3.googleusercontent.com/ytc/AIdro_lXPtpQENlzGAhOOdwoBgbWgdZZspr_D5wmS1dR6w=s160-c-k-c0x00ffffff-no-rj',
                ),
                SizedBox(height: 3, width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 3.0),
                    Text(
                      'Skooldio fanpage',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text('12h'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 3),
          sliver: SliverToBoxAdapter(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(
                  'https://www.youtube.com/watch?v=fNnChc2w2aM&t',
                )!,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up,
                                  size: 15.0, color: Colors.blue),
                              Text(
                                '235',
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '35 comments • 17 share',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Divider(
                color: Colors.grey,
                thickness: 1.0,
                height: 2.0,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 50),
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        PostButton(
                          icon: Icon(
                            MdiIcons.thumbUpOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Like',
                          onTap: () => print('Like'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.commentOutline,
                            color: Colors.grey[600],
                            size: 20.0,
                          ),
                          label: 'Comment',
                          onTap: () => print('Comment'),
                        ),
                        PostButton(
                          icon: Icon(
                            MdiIcons.shareOutline,
                            color: Colors.grey[600],
                            size: 25.0,
                          ),
                          label: 'Share',
                          onTap: () => print('Share'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _HomeScreenDesktop({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 10, 12),
              child: MoreOptionsList(currentUser: currentUser),
            ),
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 3,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: WatchBar(),
              )),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    ProfileAvatar(
                        imageUrl:
                            'https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    SizedBox(width: 7.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('ฟังเพลงเพราะๆ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0)),
                        SizedBox(height: 5.0),
                        Text('9h')
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ),
              SliverToBoxAdapter(
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(
                      'https://www.youtube.com/watch?v=ApXoWvfEYVU',
                    )!,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            PostButton(
                              icon: Icon(
                                MdiIcons.thumbUpOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Like',
                              onTap: () => print('Like'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.commentOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Comment',
                              onTap: () => print('Comment'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.shareOutline,
                                color: Colors.grey[600],
                                size: 25.0,
                              ),
                              label: 'Share',
                              onTap: () => print('Share'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(Icons.thumb_up,
                                size: 15.0, color: Colors.blue),
                            Text(' 548  •  387 comments  •  124 share'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    ProfileAvatar(
                      imageUrl:
                          'https://images.unsplash.com/photo-1516873240891-4bf014598ab4?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    SizedBox(width: 7.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('DJ JoJo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            )),
                        SizedBox(height: 5.0),
                        Text('20h'),
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ),
              SliverToBoxAdapter(
                child: YoutubePlayer(
                    controller: YoutubePlayerController(
                        initialVideoId: YoutubePlayer.convertUrlToId(
                            'https://www.youtube.com/watch?v=UceaB4D0jpo')!)),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            PostButton(
                              icon: Icon(
                                MdiIcons.thumbUpOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Like',
                              onTap: () => print('Like'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.commentOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Comment',
                              onTap: () => print('Comment'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.shareOutline,
                                color: Colors.grey[600],
                                size: 25.0,
                              ),
                              label: 'Share',
                              onTap: () => print('Share'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(Icons.thumb_up,
                                size: 15.0, color: Colors.blue),
                            Text(' 2k  •   5k comments  •  1k share'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    ProfileAvatar(
                        imageUrl:
                            'https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    SizedBox(width: 7.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Skooldio fanpage',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            )),
                        SizedBox(height: 5.0),
                        Text('12h')
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ),
              SliverToBoxAdapter(
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(
                      'https://www.youtube.com/watch?v=fNnChc2w2aM&t',
                    )!,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            PostButton(
                              icon: Icon(
                                MdiIcons.thumbUpOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Like',
                              onTap: () => print('Like'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.commentOutline,
                                color: Colors.grey[600],
                                size: 20.0,
                              ),
                              label: 'Comment',
                              onTap: () => print('Comment'),
                            ),
                            PostButton(
                              icon: Icon(
                                MdiIcons.shareOutline,
                                color: Colors.grey[600],
                                size: 25.0,
                              ),
                              label: 'Share',
                              onTap: () => print('Share'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(Icons.thumb_up,
                                size: 15.0, color: Colors.blue),
                            Text(' 235  •  35 comments  •  17 share'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
