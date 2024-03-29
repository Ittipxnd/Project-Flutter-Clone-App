import 'package:flutter/material.dart';

class WatchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        ElevatedButton.icon(
          onPressed: () => print('Live'),
          icon: const Icon(
            Icons.videocam,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
          label: Text('Live',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 90, 90),
              )),
        ),
        ElevatedButton.icon(
          onPressed: () => print('Music'),
          icon: const Icon(
            Icons.music_note,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
          label: Text('Music',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 90, 90),
              )),
        ),
        ElevatedButton.icon(
          onPressed: () => print('Following'),
          icon: const Icon(
            Icons.check_box,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
          label: Text('Following',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 90, 90),
              )),
        ),
        ElevatedButton.icon(
          onPressed: () => print('Gaming'),
          icon: const Icon(
            Icons.gamepad,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
          label: Text(
            'Gaming',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 90, 90, 90),
            ),
          ),
        ),
      ],
    );
  }
}
