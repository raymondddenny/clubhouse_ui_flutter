part of 'widgets.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;
  const RoomUserProfile({
    Key key,
    @required this.imageUrl,
    @required this.name,
    this.size = 48.0,
    this.isNew = false,
    this.isMuted = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              child: UserProfileImage(
                imageUrl: imageUrl,
                size: size,
              ),
            ),
            // to show the trumpet icon
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Pallete.whiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 7.0),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "🎉",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            // to show the mute icon
            if (isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Pallete.whiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 7.0),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    CupertinoIcons.mic_slash_fill,
                    size: 20.0,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        // name
        Flexible(
            child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
