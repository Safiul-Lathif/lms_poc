import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ExtendedVideoScreen extends StatefulWidget {
  const ExtendedVideoScreen({super.key, required this.callback});

  final Function callback;

  @override
  _ExtendedVideoScreenState createState() => _ExtendedVideoScreenState();
}

class _ExtendedVideoScreenState extends State<ExtendedVideoScreen> {
  late YoutubePlayerController _controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    _controller.setFullScreenListener(
      (isFullScreen) {
        log('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      },
    );

    _controller.cueVideoById(
      videoId: YoutubePlayerController.convertUrlToId(
          'https://www.youtube.com/watch?v=KLOcj5qvOio')!,
    );

    // .loadPlaylist(
    //   list: _videoIds,
    //   listType: ListType.playlist,
    //   startSeconds: 136,
    // );
    setState(() {
      isLoading = false;
    });

    print(
      YoutubePlayerController.convertUrlToId(
          'https://www.youtube.com/watch?v=KLOcj5qvOio')!,
    );
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return YoutubePlayerScaffold(
      controller: _controller,
      builder: (context, player) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        width: isMobile
                            ? MediaQuery.of(context).size.width * 0.92
                            : MediaQuery.of(context).size.width * 0.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      player,
                                      const VideoPositionIndicator(),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: isMobile
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.42,
                                        padding: const EdgeInsets.all(10.0),
                                        child: Wrap(
                                          runAlignment:
                                              WrapAlignment.spaceBetween,
                                          alignment: WrapAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          runSpacing: 10,
                                          children: [
                                            if (isMobile) const DetailsWidget(),
                                            SizedBox(
                                              width: isMobile
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09,
                                              child: Row(
                                                children: [
                                                  Image.network(
                                                    "https://cdn-icons-png.flaticon.com/512/3646/3646958.png",
                                                    height: 30,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "VR:  ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: isMobile
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "images/worksheet.png",
                                                    height: 30,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "Worksheet:  ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: isMobile
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "images/ar.png",
                                                    height: 30,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "AR:   ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: isMobile
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                              child: Row(
                                                children: [
                                                  Image.network(
                                                    "https://cdn-icons-png.flaticon.com/512/3646/3646958.png",
                                                    height: 30,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "Extended VR Content:   ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                    Icons.unpublished_sharp,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: isMobile
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "images/ar.png",
                                                    height: 30,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "Extended AR Content:    ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                    Icons.unpublished_sharp,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                if (!isMobile) const DetailsWidget(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (!isMobile) ...[
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              widget.callback();
                            },
                            icon: const Icon(Icons.cancel))
                      ]
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Solar System Overview",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "The solar system has one star, eight planets, five dwarf planets, at least 290 moons, more than 1.3 million asteroids, and about 3,900 comets. It is located in an outer spiral arm of the Milky Way galaxy called the Orion Arm, or Orion Spur. Our solar system orbits the center of the galaxy at about 515,000 mph (828,000 kph). It takes about 230 million years to complete one orbit around the galactic center."),
                  const SizedBox(
                    height: 10,
                  ),
                  UnorderedList(const [
                    "Sun: 99.85%",
                    "Planets: 0.135%",
                    "Comets: 0.01% ?",
                    "Satellites: 0.00005%",
                    "Minor Planets: 0.0000002% ?",
                    "Meteoroids: 0.0000001% ?",
                    "Interplanetary Medium: 0.0000001% ?"
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "We call it the solar system because it is made up of our star, the Sun, and everything bound to it by gravity – the planets Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune; dwarf planets Pluto, Ceres, Makemake, Haumea, and Eris – along with hundreds of moons; and millions of asteroids, comets, and meteoroids."),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Our Solar System contains the Sun, 8 planets, and lots of smaller objects. It formed 4,500 million years ago. It is on an outer spiral arm of the Milky Way galaxy.The 4 planets closest to the Sun are the inner or terrestrial planets. They are small, warm, rocky worlds, with few (or no) moons and no rings. They are: Mercury, Venus, Earth, and Mars. Venus, Earth, and Mars all have atmospheres and weather."),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Composition Of The Solar System",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "The Sun contains 99.85% of all the matter in the Solar System. The planets, which condensed out of the same disk of material that formed the Sun, contain only 0.135% of the mass of the solar system. Jupiter contains more than twice the matter of all the other planets combined. Satellites of the planets, comets, asteroids, meteoroids, and the interplanetary medium constitute the remaining 0.015%. The following table is a list of the mass distribution within our Solar System."),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isMobile)
              const SizedBox(
                height: 10,
              ),
            const Text(
              "Solar system | Definition, Planets, Diagram, Videos, & Facts",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Extended Clip",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            for (int i = 0; i < videoSampleData.length; i++)
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.white)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.network(
                            videoSampleData[i]['image'],
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                            child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Icon(
                              Icons.play_circle_fill_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              videoSampleData[i]['title'],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              videoSampleData[i]['subTitle'],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

///
class Controls extends StatelessWidget {
  ///
  const Controls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MetaDataSection(),
          // _space,
          // SourceInputSection(),
          // _space,
          // PlayPauseButtonBar(),
          _space,
          const VideoPositionSeeker(),
          _space,
          // PlayerStateSection(),
        ],
      ),
    );
  }

  Widget get _space => const SizedBox(height: 10);
}

///
class VideoPlaylistIconButton extends StatelessWidget {
  ///
  const VideoPlaylistIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.ytController;

    return IconButton(
      onPressed: () async {
        controller.pauseVideo();
        // await Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const VideoListPage(),
        //   ),
        // );
        controller.playVideo();
      },
      icon: const Icon(Icons.playlist_play_sharp),
    );
  }
}

///
class VideoPositionIndicator extends StatelessWidget {
  ///
  const VideoPositionIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.ytController;

    return StreamBuilder<YoutubeVideoState>(
      stream: controller.videoStateStream,
      initialData: const YoutubeVideoState(),
      builder: (context, snapshot) {
        final position = snapshot.data?.position.inMilliseconds ?? 0;
        final duration = controller.metadata.duration.inMilliseconds;

        return LinearProgressIndicator(
          value: duration == 0 ? 0 : position / duration,
          minHeight: 1,
        );
      },
    );
  }
}

///
class VideoPositionSeeker extends StatelessWidget {
  ///
  const VideoPositionSeeker({super.key});

  @override
  Widget build(BuildContext context) {
    var value = 0.0;

    return Row(
      children: [
        const Text(
          'Seek',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: StreamBuilder<YoutubeVideoState>(
            stream: context.ytController.videoStateStream,
            initialData: const YoutubeVideoState(),
            builder: (context, snapshot) {
              final position = snapshot.data?.position.inSeconds ?? 0;
              final duration = context.ytController.metadata.duration.inSeconds;

              value = position == 0 || duration == 0 ? 0 : position / duration;

              return StatefulBuilder(
                builder: (context, setState) {
                  return Slider(
                    value: value,
                    onChanged: (positionFraction) {
                      value = positionFraction;
                      setState(() {});

                      context.ytController.seekTo(
                        seconds: (value * duration).toDouble(),
                        allowSeekAhead: true,
                      );
                    },
                    min: 0,
                    max: 1,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
